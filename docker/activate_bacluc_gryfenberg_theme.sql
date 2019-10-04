UPDATE Sites
SET pThemeID = (SELECT PageThemes.pThemeID FROM PageThemes WHERE pThemeHandle = 'bacluc_gryfenberg_theme') WHERE 1;
UPDATE CollectionVersions
SET pThemeID = (SELECT PageThemes.pThemeID FROM PageThemes WHERE pThemeHandle = 'bacluc_gryfenberg_theme') WHERE 1;
