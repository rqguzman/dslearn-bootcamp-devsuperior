package com.devsuperior.dslearn.entities.enums;

public enum DeliverStatus {

    PENDING(1, "Pending"), ACCEPTED(2, "Accepted"), REJECTED(3, "Rejected");

    private int code;
    private String description;

    DeliverStatus(int code, String description) {
        this.code = code;
        this.description = description;
    }

    public int getCode() {
        return code;
    }

    public String getDescription() {
        return description;
    }

    public static DeliverStatus toEnum (Integer code){
        if (code == null) {
            return null;
        }

        for (DeliverStatus status : DeliverStatus.values()){
            if (code.equals(status.getCode())){
                return status;
            }
        }
        throw new IllegalArgumentException("[Application] >>> Invalid status code: " + code);
    }
}
