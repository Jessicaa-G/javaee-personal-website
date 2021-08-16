package jessica.website.bean;
/*
 * 技能实体类
 */
public class Skill {
	private int skill_id;
	private String skill_name;
	private String skill_proficiency;
	public int getSkill_id() {
		return skill_id;
	}
	public void setSkill_id(int skill_id) {
		this.skill_id = skill_id;
	}
	public String getSkill_name() {
		return skill_name;
	}
	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}
	public String getSkill_proficiency() {
		return skill_proficiency;
	}
	public void setSkill_proficiency(String skill_proficiency) {
		this.skill_proficiency = skill_proficiency;
	}
}
