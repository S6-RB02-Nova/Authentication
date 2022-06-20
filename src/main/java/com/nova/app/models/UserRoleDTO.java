package com.nova.app.models;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Setter;

@Data
public class UserRoleDTO {
    @Setter(AccessLevel.PRIVATE)
    public String username;
    @Setter(AccessLevel.PRIVATE)
    public String roleName;
}
