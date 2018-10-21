#pragma once

#include <string>

#include "../../depends/json.hpp"
#include "cpr/cpr.h"

using json = nlohmann::json;
using string = std::string;

/*
SELECT id, current_zone_id, x, y, z, heading, admin_status,
race, model_type, class, deity, level, gender, tradeskill_class,
tradeskill_level, wing_type, hair_type, chest_type, legs_type, soga_wing_type,
soga_hair_type, soga_chest_type, soga_legs_type, 0xFFFFFFFF - crc32(name),
facial_hair_type, soga_facial_hair_type,instance_id,last_saved, DATEDIFF(curdate(), created_date) as accage,
alignment FROM characters where name='%s' and account_id=%i AND deleted = 0", query.escaped_name, account_id);
*/

namespace ns {
  struct character {
    int id;
    string name;
    unsigned char race;
    unsigned char class_id;
    unsigned char deity;
    unsigned char level;
    unsigned char gender;
    unsigned char tradeskill_class;
    unsigned char tradeskill_level;
    int model_type;
    int wing_type;
    int hair_type;
    int chest_type;
    int legs_type;
    int facial_hair_type;
    int soga_wing_type;
    int soga_hair_type;
    int soga_chest_type;
    int soga_legs_type;
    int soga_facial_hair_type;
    float x;
    float y;
    float z;
    float heading;
    unsigned int current_zone_id;
    unsigned int instance_id;
    unsigned int last_saved;
    char alignment;
    unsigned char admin_status;
  };

  void to_json(json& j, const character& p);
  void from_json(const json& j, character& p);
} // namespace ns

class API {
public:
  API();
  void getCharacter(int id);

private:
  cpr::Url buildUrl(string endpoint, int id);

  string api_url;
};