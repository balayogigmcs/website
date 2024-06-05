class Information {
  final Map<String, List<String>> subCategories;
  final Map<String, List<String>> subSubCategories;

  Information({required this.subCategories, required this.subSubCategories});
}

final information = Information(
  subCategories: {
    'Business Incentives': [
      'Tax Credits',
      'Grants & Funding',
      'Regulatory Assistance',
      'Business Development Services'
    ],
    'Housing Programs': [
      'Housing Initiatives',
      'Home Ownership Assistance',
      'Rental Assistance Programs',
      'Property Tax Relief'
    ],
    'Employment Services': [
      'Job Training Programs',
      'Employment Assistance',
      'Workforce Development Initiatives',
      'Apprenticeship Opportunities'
    ],
    'Community Development': [
      'Infrastructure Projects',
      'Community Revitalization Programs',
      'Neighborhood Improvement Grants',
      'Public Safety Initiatives'
    ],
    'Environmental Initiatives': [
      'Energy Efficiency Rebates',
      'Sustainable Development Grants',
      'Recycling Programs',
      'Clean Energy Incentives'
    ],
    'Land Management System': [
      'Property Ownership Details',
      'Current Land Use',
      'Maintenance and Upkeep',
      'Lease and Rental Agreements'
    ]
  },
  subSubCategories: {
    'Tax Credits': [
      'Federal Tax Credits',
      'State Tax Credits',
      'Local Tax Credits'
    ],
    'Housing Initiatives': [
      'Affordable Housing Programs',
      'Homelessness Prevention Initiatives',
      'Housing Development Projects'
    ],
    'Job Training Programs': [
      'Skill Development Workshops',
      'Vocational Training Courses',
      'Job Placement Services'
    ],
    'Infrastructure Projects': [
      'Road Construction',
      'Bridge Rehabilitation',
      'Public Transportation Expansion'
    ],
    // Add more sub-subcategories as needed
  },
);
