﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Entities.Identity
{
    public class UserRoleEntity : IdentityUserRole<int>
    {
        public virtual User User { get; set; }
        public virtual RoleEntity Role { get; set; }
    }
}
