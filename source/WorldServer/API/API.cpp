#include <sstream>

#include "../../depends/json.hpp"
#include "API.h"

using character = ns::character;
using json = nlohmann::json;
using ostringstream = std::ostringstream;

namespace ns {
  void to_json(json& j, const character& p) {
    j = json{{"id", p.id}, {"name", p.name}, {"race", p.race}, {"class_id", p.class_id}};
  }

  void from_json(const json& j, character& p) {
    j.at("id").get_to(p.id);
    j.at("name").get_to(p.name);
    j.at("race").get_to(p.race);
    j.at("class_id").get_to(p.class_id);
    j.at("deity").get_to(p.deity);
    j.at("level").get_to(p.level);
    j.at("gender").get_to(p.gender);
    j.at("tradeskill_class").get_to(p.tradeskill_class);
    j.at("tradeskill_level").get_to(p.tradeskill_level);
    j.at("model_type").get_to(p.model_type);
    j.at("wing_type").get_to(p.wing_type);
    j.at("hair_type").get_to(p.hair_type);
    j.at("chest_type").get_to(p.chest_type);
    j.at("legs_type").get_to(p.legs_type);
    j.at("facial_hair_type").get_to(p.facial_hair_type);
    j.at("soga_wing_type").get_to(p.soga_wing_type);
    j.at("soga_hair_type").get_to(p.soga_hair_type);
    j.at("soga_chest_type").get_to(p.soga_chest_type);
    j.at("soga_legs_type").get_to(p.soga_legs_type);
    j.at("soga_facial_hair_type").get_to(p.soga_facial_hair_type);
    j.at("x").get_to(p.x);
    j.at("y").get_to(p.y);
    j.at("z").get_to(p.z);
    j.at("heading").get_to(p.heading);
    j.at("current_zone_id").get_to(p.current_zone_id);
    j.at("instance_id").get_to(p.instance_id);
    j.at("last_saved").get_to(p.last_saved);
    j.at("alignment").get_to(p.alignment);
    j.at("admin_status").get_to(p.admin_status);
  }
} // namespace ns

API::API() {
  api_url = "http://localhost:3000";
}

string API::buildUrl(string endpoint, int id) {
  ostringstream os;
  os << api_url << "/" << endpoint << "/" << id;
  return cpr::Url(os.str());
}

void API::getCharacter(int id) {
  auto r = cpr::Get(buildUrl("characters", id));
  auto j = json::parse(r.text);
  character c = j;
  printf("yep");
}