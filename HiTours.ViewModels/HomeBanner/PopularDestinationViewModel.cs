﻿// <copyright file="PopularDestinationViewModel.cs" company="Luxury Travel Deals">
// Copyright (c) Luxury Travel Deals All rights reserved.
// </copyright>

namespace HiTours.ViewModels
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using HiTours.Core;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc.Rendering;

    /// <summary>
    /// HomeBannerViewModel
    /// </summary>
    public class PopularDestinationViewModel : BaseModel
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public int Id { get; set; }

        /// <summary>
        /// Gets or sets the name of the image.
        /// </summary>
        /// <value>
        /// The name of the image.
        /// </value>
        public short? CountryId { get; set; }

        /// <summary>
        /// Gets or sets the text1.
        /// </summary>
        /// <value>
        /// The text1.
        /// </value>
        public string CountryName { get; set; }

        /// <summary>
        /// Gets or sets the name of the image.
        /// </summary>
        /// <value>
        /// The name of the image.
        /// </value>
        public int? StateId { get; set; }

        /// <summary>
        /// Gets or sets the text1.
        /// </summary>
        /// <value>
        /// The text1.
        /// </value>
        public string StateName { get; set; }

        /// <summary>
        /// Gets or sets the name of the image.
        /// </summary>
        /// <value>
        /// The name of the image.
        /// </value>
        public int? CityId { get; set; }

        /// <summary>
        /// Gets or sets the text1.
        /// </summary>
        /// <value>
        /// The text1.
        /// </value>
        public string CityName { get; set; }

        /// <summary>
        /// Gets or sets the text1.
        /// </summary>
        /// <value>
        /// The text1.
        /// </value>
        public string SubName { get; set; }

        /// <summary>
        /// Gets or sets the text2.
        /// </summary>
        /// <value>
        /// The text2.
        /// </value>
        public string Text2 { get; set; }

        /// <summary>
        /// Gets or sets the text3.
        /// </summary>
        /// <value>
        /// The text3.
        /// </value>
        public string Text1 { get; set; }

        /// <summary>
        /// Gets or sets the text4.
        /// </summary>
        /// <value>
        /// The text4.
        /// </value>
        public string Image { get; set; }

        /// <summary>
        /// Gets or sets the name of the image.
        /// </summary>
        /// <value>
        /// The name of the image.
        /// </value>
        public int Type { get; set; }

        /// <summary>
        /// Gets or sets the package images.
        /// </summary>
        /// <value>
        /// The package images.
        /// </value>
        public IFormFile ImageFile { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether gets or sets the IsActive.
        /// </summary>
        /// <value>
        /// The RedirectUrl.
        /// </value>
        public bool IsActive { get; set; }

        /// <summary>
        /// Gets or sets the text4.
        /// </summary>
        /// <value>
        /// The text4.
        /// </value>
        public ICollection<SelectListItem> CountryItems { get; set; }

        /// <summary>
        /// Gets or sets the text4.
        /// </summary>
        /// <value>
        /// The text4.
        /// </value>
        public ICollection<SelectListItem> StateItems { get; set; }

        /// <summary>
        /// Gets or sets the text4.
        /// </summary>
        /// <value>
        /// The text4.
        /// </value>
        public ICollection<SelectListItem> CityItems { get; set; }
    }
}