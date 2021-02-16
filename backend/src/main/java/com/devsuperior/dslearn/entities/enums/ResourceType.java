package com.devsuperior.dslearn.entities.enums;

public enum ResourceType {

    LESSON_ONLY(1, "Lesson only"), LESSON_TASK(2, "Lesson task"), FORUM(3, "Forum"), EXTERNAL_LINK(4, "External link");

    private int code;
    private String description;

    ResourceType(int code, String description) {
        this.code = code;
        this.description = description;
    }

    public int getCode() {
        return code;
    }

    public String getDescription() {
        return description;
    }

    public static ResourceType toEnum (Integer code){
        if (code == null) {
            return null;
        }

        for (ResourceType type : ResourceType.values()){
            if (code.equals(type.getCode())){
                return type;
            }
        }
        throw new IllegalArgumentException("[Application] >>> Invalid type code: " + code);
    }
}
