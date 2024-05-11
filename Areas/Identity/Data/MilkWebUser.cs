﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace FarmMilk.Areas.Identity.Data;

// Add profile data for application users by adding properties to the ShoesMVCUser class
public class MilkWebUser : IdentityUser
{
    public string firstName {  get; set; }
    public string lastName { get; set; }

}

