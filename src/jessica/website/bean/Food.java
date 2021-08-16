package jessica.website.bean;
/*
 * 美食实体类
 */
public class Food {
	private int food_id;
	private String food_name;
	private String food_content;
	private String food_pic_path;
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public String getFood_content() {
		return food_content;
	}
	public void setFood_content(String food_content) {
		this.food_content = food_content;
	}
	public String getFood_pic_path() {
		return food_pic_path;
	}
	public void setFood_pic_path(String food_pic_path) {
		this.food_pic_path = food_pic_path;
	}
}
