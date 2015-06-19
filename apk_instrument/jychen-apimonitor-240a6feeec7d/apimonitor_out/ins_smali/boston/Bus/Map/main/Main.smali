.class public Lboston/Bus/Map/main/Main;
.super Lcom/google/android/maps/MapActivity;
.source "Main.java"
.field public static final BUS_PREDICTIONS_ALL:I = 0x4
.field public static final BUS_PREDICTIONS_ONE:I = 0x2
.field public static final BUS_PREDICTIONS_STAR:I = 0x5
.field public static final VEHICLE_LOCATIONS_ALL:I = 0x1
.field public static final VEHICLE_LOCATIONS_ONE:I = 0x3
.field private static final centerLatKey:Ljava/lang/String; = "centerLat"
.field private static final centerLonKey:Ljava/lang/String; = "centerLon"
.field public static final modeIconsSupported:[I = null
.field public static final modeTextSupported:[Ljava/lang/String; = null
.field public static final modesSupported:[I = null
.field private static final selectedBusPredictionsKey:Ljava/lang/String; = "selectedBusPredictions"
.field private static final selectedRouteIndexKey:Ljava/lang/String; = "selectedRouteIndex"
.field private static final zoomLevelKey:Ljava/lang/String; = "zoomLevel"
.field private busDrawableAll:Landroid/graphics/drawable/Drawable;
.field private busDrawableOne:Landroid/graphics/drawable/Drawable;
.field private busLocations:Lboston/Bus/Map/data/Locations;
.field private busOverlay:Lboston/Bus/Map/ui/BusOverlay;
.field private busStop:Landroid/graphics/drawable/Drawable;
.field private busStopDrawableAll:Landroid/graphics/drawable/Drawable;
.field private busStopDrawableOne:Landroid/graphics/drawable/Drawable;
.field private busStopDrawableStar:Landroid/graphics/drawable/Drawable;
.field private currentFavoriteStatus:I
.field private favoriteMenuItem:Landroid/view/MenuItem;
.field private firstRunMode:Z
.field private firstRunRoute:Z
.field private handler:Lboston/Bus/Map/main/UpdateHandler;
.field private mapView:Lcom/google/android/maps/MapView;
.field private myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
.field private routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
.field private selectedRouteIndex:I
.field private textView:Landroid/widget/TextView;
.field private final timeoutInMillis:D
.field private toggleButton:Landroid/widget/Spinner;
.method static constructor <clinit>()V
.registers 3
const/4 v1, 0x4
new-array v0, v1, [I
fill-array-data v0, :array_28
sput-object v0, Lboston/Bus/Map/main/Main;->modesSupported:[I
new-array v0, v1, [I
fill-array-data v0, :array_34
sput-object v0, Lboston/Bus/Map/main/Main;->modeIconsSupported:[I
new-array v0, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "All buses"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "Buses on one route"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "Stops and predictions on one route"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "Favorite stops"
aput-object v2, v0, v1
sput-object v0, Lboston/Bus/Map/main/Main;->modeTextSupported:[Ljava/lang/String;
return-void
:array_34
.array-data 0x4
0x6t 0x0t 0x2t 0x7ft
0x7t 0x0t 0x2t 0x7ft
0xct 0x0t 0x2t 0x7ft
0xet 0x0t 0x2t 0x7ft
.end array-data
:array_28
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V
const-wide v0, 0x41224f8000000000L
iput-wide v0, p0, Lboston/Bus/Map/main/Main;->timeoutInMillis:D
return-void
.end method
.method static synthetic access$000(Lboston/Bus/Map/main/Main;)Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/Main;->firstRunMode:Z
return v0
.end method
.method static synthetic access$002(Lboston/Bus/Map/main/Main;Z)Z
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/Main;->firstRunMode:Z
return p1
.end method
.method static synthetic access$100(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/data/Locations;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
return-object v0
.end method
.method static synthetic access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
return-object v0
.end method
.method static synthetic access$300(Lboston/Bus/Map/main/Main;)Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/Main;->firstRunRoute:Z
return v0
.end method
.method static synthetic access$302(Lboston/Bus/Map/main/Main;Z)Z
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/Main;->firstRunRoute:Z
return p1
.end method
.method static synthetic access$402(Lboston/Bus/Map/main/Main;I)I
.registers 2
iput p1, p0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
return p1
.end method
.method private getOrObtainRoutes(Lboston/Bus/Map/database/DatabaseHelper;)[[Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lboston/Bus/Map/main/Main;->getResources()Landroid/content/res/Resources;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [[Ljava/lang/String;
const/4 v2, 0x0
const v3, 0x7f060003
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
const v3, 0x7f060002
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
return-object v1
.end method
.method private getSelectedBusPredictions()I
.registers 3
iget-object v1, p0, Lboston/Bus/Map/main/Main;->toggleButton:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
if-ltz v0, :cond_d
sget-object v1, Lboston/Bus/Map/main/Main;->modesSupported:[I
array-length v1, v1
if-lt v0, v1, :cond_f
:cond_d
const/4 v1, 0x1
:goto_e
return v1
:cond_f
sget-object v1, Lboston/Bus/Map/main/Main;->modesSupported:[I
aget v1, v1, v0
goto :goto_e
.end method
.method private makeModeSpinner()Landroid/widget/SpinnerAdapter;
.registers 7
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_6
sget-object v4, Lboston/Bus/Map/main/Main;->modesSupported:[I
array-length v4, v4
if-ge v1, v4, :cond_1e
new-instance v2, Lboston/Bus/Map/ui/ViewingMode;
sget-object v4, Lboston/Bus/Map/main/Main;->modeIconsSupported:[I
aget v4, v4, v1
sget-object v5, Lboston/Bus/Map/main/Main;->modeTextSupported:[Ljava/lang/String;
aget-object v5, v5, v1
invoke-direct {v2, v4, v5}, Lboston/Bus/Map/ui/ViewingMode;-><init>(ILjava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_1e
new-instance v0, Lboston/Bus/Map/ui/ModeAdapter;
invoke-direct {v0, p0, v3}, Lboston/Bus/Map/ui/ModeAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
return-object v0
.end method
.method private makeRouteSpinnerAdapter([[Ljava/lang/String;)Landroid/widget/SpinnerAdapter;
.registers 14
const/4 v5, 0x1
const/4 v10, 0x0
const-string v11, "name"
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
aget-object v7, p1, v10
aget-object v9, p1, v5
const/4 v6, 0x0
:goto_e
array-length v1, v7
if-ge v6, v1, :cond_2a
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
const-string v1, "key"
aget-object v3, v7, v6
invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "name"
aget-object v1, v9, v6
invoke-virtual {v8, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v6, v6, 0x1
goto :goto_e
:cond_2a
new-instance v0, Landroid/widget/SimpleAdapter;
const v3, 0x1090008
new-array v4, v5, [Ljava/lang/String;
const-string v1, "name"
aput-object v11, v4, v10
new-array v5, v5, [I
const v1, 0x1020014
aput v1, v5, v10
move-object v1, p0
invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
const v1, 0x109000a
invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setDropDownViewResource(I)V
return-object v0
.end method
.method private populateHandlerSettings()V
.registers 10
const v8, 0x7f070008
const v7, 0x7f070002
const/4 v6, 0x1
const/4 v5, 0x0
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-virtual {p0, v7}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v3, v1}, Lboston/Bus/Map/main/UpdateHandler;->setUpdateConstantly(Z)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const v4, 0x7f070003
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
invoke-virtual {v3, v4}, Lboston/Bus/Map/main/UpdateHandler;->setShowUnpredictable(Z)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const v4, 0x7f070004
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
invoke-virtual {v3, v4}, Lboston/Bus/Map/main/UpdateHandler;->setHideHighlightCircle(Z)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const v4, 0x7f070006
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
invoke-virtual {v3, v4}, Lboston/Bus/Map/main/UpdateHandler;->setInferBusRoutes(Z)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const v4, 0x7f070007
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
invoke-virtual {v3, v4}, Lboston/Bus/Map/main/UpdateHandler;->setShowRouteLine(Z)V
invoke-virtual {p0, v8}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v3, v2}, Lboston/Bus/Map/main/UpdateHandler;->setShowCoarseRouteLine(Z)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v3, v6}, Lboston/Bus/Map/main/UpdateHandler;->setInitAllRouteInfo(Z)V
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-virtual {p0, v7}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-virtual {p0, v8}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method private setSelectedBusPredictions(I)V
.registers 4
const/4 v0, 0x0
:goto_1
sget-object v1, Lboston/Bus/Map/main/Main;->modesSupported:[I
array-length v1, v1
if-ge v0, v1, :cond_11
sget-object v1, Lboston/Bus/Map/main/Main;->modesSupported:[I
aget v1, v1, v0
if-ne v1, p1, :cond_12
iget-object v1, p0, Lboston/Bus/Map/main/Main;->toggleButton:Landroid/widget/Spinner;
invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V
:cond_11
return-void
:cond_12
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method protected isRouteDisplayed()Z
.registers 2
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v0, :cond_12
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 40
const-string v1, " + Lboston/Bus/Map/main/Main; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super/range {p0 .. p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V
const v4, 0x7f030004
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/Main;->setContentView(I)V
const/4 v4, 0x1
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lboston/Bus/Map/main/Main;->firstRunMode:Z
const/4 v4, 0x1
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lboston/Bus/Map/main/Main;->firstRunRoute:Z
const v4, 0x7f09000d
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/Main;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Lcom/google/android/maps/MapView;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
const v4, 0x7f09000c
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/Main;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
const v4, 0x7f09000a
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/Main;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/Spinner;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->toggleButton:Landroid/widget/Spinner;
const v4, 0x7f09000b
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/Main;->findViewById(I)Landroid/view/View;
move-result-object v30
check-cast v30, Landroid/widget/Spinner;
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->getResources()Landroid/content/res/Resources;
move-result-object v35
const v4, 0x7f020012
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v7
const v4, 0x7f020009
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v5
const/high16 v4, 0x7f02
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
const v4, 0x7f020020
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v14
const v4, 0x7f02000f
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busStop:Landroid/graphics/drawable/Drawable;
const v4, 0x7f020007
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busDrawableOne:Landroid/graphics/drawable/Drawable;
const v4, 0x7f020006
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busDrawableAll:Landroid/graphics/drawable/Drawable;
const v4, 0x7f02000c
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busStopDrawableOne:Landroid/graphics/drawable/Drawable;
const v4, 0x7f02000b
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busStopDrawableAll:Landroid/graphics/drawable/Drawable;
const v4, 0x7f02000e
move-object/from16 v0, v35
move v1, v4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busStopDrawableStar:Landroid/graphics/drawable/Drawable;
invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->makeModeSpinner()Landroid/widget/SpinnerAdapter;
move-result-object v31
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->toggleButton:Landroid/widget/Spinner;
move-object v4, v0
new-instance v8, Lboston/Bus/Map/main/Main$1;
move-object v0, v8
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main$1;-><init>(Lboston/Bus/Map/main/Main;)V
invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->toggleButton:Landroid/widget/Spinner;
move-object v4, v0
move-object v0, v4
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v17, Lboston/Bus/Map/database/DatabaseHelper;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busStop:Landroid/graphics/drawable/Drawable;
move-object v4, v0
move-object/from16 v0, v17
move-object/from16 v1, p0
move-object v2, v4
invoke-direct {v0, v1, v2}, Lboston/Bus/Map/database/DatabaseHelper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main;->getOrObtainRoutes(Lboston/Bus/Map/database/DatabaseHelper;)[[Ljava/lang/String;
move-result-object v36
const/4 v4, 0x0
aget-object v9, v36, v4
move-object/from16 v0, p0
move-object/from16 v1, v36
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main;->makeRouteSpinnerAdapter([[Ljava/lang/String;)Landroid/widget/SpinnerAdapter;
move-result-object v4
move-object/from16 v0, v30
move-object v1, v4
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
const-wide/16 v27, 0x0
const/16 v34, 0x0
const/16 v21, 0x0
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v26
if-eqz v26, :cond_2b7
move-object/from16 v0, v26
check-cast v0, Lboston/Bus/Map/main/CurrentState;
move-object/from16 v25, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
move-object v4, v0
move-object/from16 v0, v25
move-object v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/CurrentState;->restoreWidgets(Landroid/widget/TextView;)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
move-object/from16 v0, v25
move-object/from16 v1, p0
move-object v2, v4
invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/main/CurrentState;->cloneBusOverlay(Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)Lboston/Bus/Map/ui/BusOverlay;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v4
move-object/from16 v0, v25
move-object v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/CurrentState;->cloneRouteOverlay(Lcom/google/android/maps/Projection;)Lboston/Bus/Map/ui/RouteOverlay;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
move-object/from16 v0, v25
move-object/from16 v1, p0
move-object v2, v4
invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/main/CurrentState;->cloneLocationOverlay(Landroid/content/Context;Lcom/google/android/maps/MapView;)Lboston/Bus/Map/ui/LocationOverlay;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->clear()V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
move-object v8, v0
invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object v8, v0
invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object v8, v0
invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object v4, v0
invoke-virtual {v4}, Lboston/Bus/Map/ui/BusOverlay;->refreshBalloons()V
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getBusLocations()Lboston/Bus/Map/data/Locations;
move-result-object v4
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getLastUpdateTime()D
move-result-wide v27
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getUpdateConstantly()Z
move-result v34
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getSelectedRouteIndex()I
move-result v4
move v0, v4
move-object/from16 v1, p0
iput v0, v1, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getSelectedBusPredictions()I
move-result v4
move-object/from16 v0, p0
move v1, v4
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main;->setSelectedBusPredictions(I)V
invoke-virtual/range {v25 .. v25}, Lboston/Bus/Map/main/CurrentState;->getMajorHandler()Lboston/Bus/Map/main/UpdateAsyncTask;
move-result-object v21
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
move-object v4, v0
move-object/from16 v0, v21
move-object v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->setTextView(Landroid/widget/TextView;)V
:goto_1f8
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
move-object v4, v0
if-nez v4, :cond_20e
new-instance v4, Lboston/Bus/Map/data/Locations;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busStop:Landroid/graphics/drawable/Drawable;
move-object v8, v0
invoke-direct/range {v4 .. v9}, Lboston/Bus/Map/data/Locations;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
:cond_20e
new-instance v10, Lboston/Bus/Map/main/UpdateHandler;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
move-object v11, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v12, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
move-object v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object/from16 v20, v0
move-object v13, v6
move-object/from16 v16, p0
invoke-direct/range {v10 .. v21}, Lboston/Bus/Map/main/UpdateHandler;-><init>(Landroid/widget/TextView;Lcom/google/android/maps/MapView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/data/Locations;Landroid/content/Context;Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Lboston/Bus/Map/main/UpdateAsyncTask;)V
move-object v0, v10
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v5, v0
invoke-virtual {v4, v5}, Lboston/Bus/Map/ui/BusOverlay;->setUpdateable(Lboston/Bus/Map/main/UpdateHandler;)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v5, v0
invoke-virtual {v4, v5}, Lboston/Bus/Map/ui/LocationOverlay;->setUpdateable(Lboston/Bus/Map/main/UpdateHandler;)V
invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->populateHandlerSettings()V
new-instance v4, Lboston/Bus/Map/main/Main$2;
move-object v0, v4
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main$2;-><init>(Lboston/Bus/Map/main/Main;)V
move-object/from16 v0, v30
move-object v1, v4
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
if-eqz v26, :cond_2f3
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
move v4, v0
move-object/from16 v0, v30
move v1, v4
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->getSelectedBusPredictions()I
move-result v5
invoke-virtual {v4, v5}, Lboston/Bus/Map/main/UpdateHandler;->setSelectedBusPredictions(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
move v5, v0
invoke-virtual {v4, v5}, Lboston/Bus/Map/main/UpdateHandler;->setRouteIndex(I)V
:goto_28d
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
move-object v0, v4
move-wide/from16 v1, v27
invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/main/UpdateHandler;->setLastUpdateTime(D)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
invoke-virtual {v4}, Lboston/Bus/Map/main/UpdateHandler;->getUpdateConstantly()Z
move-result v4
if-eqz v4, :cond_2ad
if-nez v34, :cond_2ad
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
invoke-virtual {v4}, Lboston/Bus/Map/main/UpdateHandler;->instantRefresh()Z
:cond_2ad
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V
const-string v1, " - Lboston/Bus/Map/main/Main; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b7
new-instance v4, Lboston/Bus/Map/ui/BusOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v8, v0
move-object v0, v4
move-object v1, v5
move-object/from16 v2, p0
move-object v3, v8
invoke-direct {v0, v1, v2, v3}, Lboston/Bus/Map/ui/BusOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
new-instance v4, Lboston/Bus/Map/ui/RouteOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v8, v0
invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v8
invoke-direct {v4, v8}, Lboston/Bus/Map/ui/RouteOverlay;-><init>(Lcom/google/android/maps/Projection;)V
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
new-instance v4, Lboston/Bus/Map/ui/LocationOverlay;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v8, v0
move-object v0, v4
move-object/from16 v1, p0
move-object v2, v8
invoke-direct {v0, v1, v2}, Lboston/Bus/Map/ui/LocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
goto/16 :goto_1f8
:cond_2f3
invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v33
const-string v4, "centerLat"
const v5, 0x7fffffff
move-object/from16 v0, v33
move-object v1, v4
move v2, v5
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v22
const-string v4, "centerLon"
const v5, 0x7fffffff
move-object/from16 v0, v33
move-object v1, v4
move v2, v5
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v23
const-string v4, "zoomLevel"
const v5, 0x7fffffff
move-object/from16 v0, v33
move-object v1, v4
move v2, v5
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v37
const-string v4, "selectedRouteIndex"
const/4 v5, 0x0
move-object/from16 v0, v33
move-object v1, v4
move v2, v5
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
move v0, v4
move-object/from16 v1, p0
iput v0, v1, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
const-string v4, "selectedBusPredictions"
const/4 v5, 0x1
move-object/from16 v0, v33
move-object v1, v4
move v2, v5
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v4
move-object/from16 v0, p0
move v1, v4
invoke-direct {v0, v1}, Lboston/Bus/Map/main/Main;->setSelectedBusPredictions(I)V
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
move v4, v0
move-object/from16 v0, v30
move v1, v4
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
move v5, v0
invoke-virtual {v4, v5}, Lboston/Bus/Map/main/UpdateHandler;->setRouteIndex(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
move-object v4, v0
invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/main/Main;->getSelectedBusPredictions()I
move-result v5
invoke-virtual {v4, v5}, Lboston/Bus/Map/main/UpdateHandler;->setSelectedBusPredictions(I)V
const v4, 0x7fffffff
move/from16 v0, v22
move v1, v4
if-eq v0, v1, :cond_3a9
const v4, 0x7fffffff
move/from16 v0, v23
move v1, v4
if-eq v0, v1, :cond_3a9
const v4, 0x7fffffff
move/from16 v0, v37
move v1, v4
if-eq v0, v1, :cond_3a9
new-instance v32, Lcom/google/android/maps/GeoPoint;
move-object/from16 v0, v32
move/from16 v1, v22
move/from16 v2, v23
invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;
move-result-object v24
move-object/from16 v0, v24
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V
move-object/from16 v0, v24
move/from16 v1, v37
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I
:goto_39d
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
move-object v4, v0
const-string v5, ""
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_28d
:cond_3a9
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;
move-result-object v24
new-instance v29, Lcom/google/android/maps/GeoPoint;
invoke-static {}, Lboston/Bus/Map/transit/TransitSystem;->getCenterLatAsInt()I
move-result v4
invoke-static {}, Lboston/Bus/Map/transit/TransitSystem;->getCenterLonAsInt()I
move-result v5
move-object/from16 v0, v29
move v1, v4
move v2, v5
invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
move-object/from16 v0, v24
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V
const/16 v4, 0xe
move-object/from16 v0, v24
move v1, v4
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I
goto :goto_39d
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lboston/Bus/Map/main/Main; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lboston/Bus/Map/main/Main;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v1
const/high16 v3, 0x7f08
invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const/4 v0, 0x0
:goto_a
invoke-interface {p1}, Landroid/view/Menu;->size()I
move-result v3
if-ge v0, v3, :cond_28
invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I
move-result v3
const v4, 0x7f090011
if-ne v3, v4, :cond_2a
iget v3, p0, Lboston/Bus/Map/main/Main;->currentFavoriteStatus:I
if-eqz v3, :cond_28
iget v3, p0, Lboston/Bus/Map/main/Main;->currentFavoriteStatus:I
invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
iput-object v2, p0, Lboston/Bus/Map/main/Main;->favoriteMenuItem:Landroid/view/MenuItem;
:cond_28
const/4 v3, 0x1
const-string v1, " - Lboston/Bus/Map/main/Main; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v3
:cond_2a
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lboston/Bus/Map/main/Main; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iput-object v1, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
iput-object v1, p0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
iget-object v0, p0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
if-eqz v0, :cond_10
iget-object v0, p0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/BusOverlay;->setUpdateable(Lboston/Bus/Map/main/UpdateHandler;)V
iput-object v1, p0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
:cond_10
iput-object v1, p0, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v0, :cond_21
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
iput-object v1, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
:cond_21
iget-object v0, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
if-eqz v0, :cond_2c
iget-object v0, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
invoke-virtual {v0}, Lboston/Bus/Map/ui/LocationOverlay;->disableMyLocation()V
iput-object v1, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
:cond_2c
iput-object v1, p0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V
const-string v1, " - Lboston/Bus/Map/main/Main; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 12
const/4 v4, 0x0
const/4 v0, 0x4
if-ne p1, v0, :cond_9
invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_8
return v0
:cond_9
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v0, :cond_3e
const/16 v0, 0x17
if-ne p1, v0, :cond_37
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v5, v0
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v6, v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
move v7, v4
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0, v8}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_8
:cond_37
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_8
:cond_3e
invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_8
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 12
const/4 v0, 0x4
if-ne p1, v0, :cond_8
invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v0, :cond_45
iget-object v0, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const/16 v1, 0xfa
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate(I)V
const/16 v0, 0x17
if-ne p1, v0, :cond_3e
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v5, v0
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getHeight()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v6, v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
const/4 v4, 0x1
const/4 v7, 0x0
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0, v8}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_7
:cond_3e
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/MapView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_7
:cond_45
invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_7
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lboston/Bus/Map/main/Main; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v4
packed-switch v4, :pswitch_data_a6
:goto_7
:cond_7
const/4 v4, 0x1
const-string v1, " - Lboston/Bus/Map/main/Main; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:pswitch_9
iget-object v4, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v4}, Lboston/Bus/Map/main/UpdateHandler;->instantRefresh()Z
move-result v0
if-nez v0, :cond_7
iget-object v4, p0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
const-string v5, "Please wait 10 seconds before clicking Refresh again"
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_7
:pswitch_19
new-instance v4, Landroid/content/Intent;
const-class v5, Lboston/Bus/Map/main/Preferences;
invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:pswitch_24
iget-object v4, p0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
if-eqz v4, :cond_7
new-instance v1, Lboston/Bus/Map/database/DatabaseHelper;
iget-object v4, p0, Lboston/Bus/Map/main/Main;->busStop:Landroid/graphics/drawable/Drawable;
invoke-direct {v1, p0, v4}, Lboston/Bus/Map/database/DatabaseHelper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
iget-object v5, p0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
invoke-virtual {v4, v1, v5}, Lboston/Bus/Map/ui/BusOverlay;->toggleFavorite(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/data/Locations;)I
move-result v2
invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const-string v4, "BostonBusMap"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "setting favorite icon to "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const v6, 0x7f020011
if-ne v2, v6, :cond_5a
const-string v6, "full star"
:goto_4e
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_7
:cond_5a
const-string v6, "empty star"
goto :goto_4e
:pswitch_5d
iget-object v4, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v4, :cond_7
new-instance v3, Lcom/google/android/maps/GeoPoint;
invoke-static {}, Lboston/Bus/Map/transit/TransitSystem;->getCenterLatAsInt()I
move-result v4
invoke-static {}, Lboston/Bus/Map/transit/TransitSystem;->getCenterLonAsInt()I
move-result v5
invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
iget-object v4, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;
move-result-object v4
invoke-virtual {v4, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
iget-object v4, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const/16 v5, 0x5dc
invoke-virtual {v4, v5}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate(I)V
goto :goto_7
:pswitch_7f
iget-object v4, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
if-eqz v4, :cond_7
iget-object v4, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
invoke-virtual {v4}, Lboston/Bus/Map/ui/LocationOverlay;->isMyLocationEnabled()Z
move-result v4
if-nez v4, :cond_9f
iget-object v4, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
invoke-virtual {v4}, Lboston/Bus/Map/ui/LocationOverlay;->enableMyLocation()Z
const v4, 0x7f070010
invoke-virtual {p0, v4}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
:cond_9f
iget-object v4, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
invoke-virtual {v4}, Lboston/Bus/Map/ui/LocationOverlay;->updateMapViewPosition()V
goto/16 :goto_7
:pswitch_data_a6
.packed-switch 0x7f09000e
:pswitch_7f
:pswitch_5d
:pswitch_19
:pswitch_24
:pswitch_9
.end packed-switch
.end method
.method protected onPause()V
.registers 6
const-string v1, " + Lboston/Bus/Map/main/Main; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v3, :cond_42
iget-object v3, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;
move-result-object v1
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v3, "selectedBusPredictions"
invoke-direct {p0}, Lboston/Bus/Map/main/Main;->getSelectedBusPredictions()I
move-result v4
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "selectedRouteIndex"
iget v4, p0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "centerLat"
invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I
move-result v4
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "centerLon"
invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I
move-result v4
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "zoomLevel"
iget-object v4, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getZoomLevel()I
move-result v4
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_42
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
if-eqz v3, :cond_4b
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v3}, Lboston/Bus/Map/main/UpdateHandler;->removeAllMessages()V
:cond_4b
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V
const-string v1, " - Lboston/Bus/Map/main/Main; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lboston/Bus/Map/main/Main; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V
invoke-direct {p0}, Lboston/Bus/Map/main/Main;->populateHandlerSettings()V
iget-object v0, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v0}, Lboston/Bus/Map/main/UpdateHandler;->resume()V
const-string v1, " - Lboston/Bus/Map/main/Main; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 14
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v12
const v0, 0x7f070002
invoke-virtual {p0, v0}, Lboston/Bus/Map/main/Main;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
new-instance v0, Lboston/Bus/Map/main/CurrentState;
iget-object v1, p0, Lboston/Bus/Map/main/Main;->textView:Landroid/widget/TextView;
iget-object v2, p0, Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
iget-object v3, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v3}, Lboston/Bus/Map/main/UpdateHandler;->getLastUpdateTime()D
move-result-wide v3
iget v6, p0, Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
invoke-direct {p0}, Lboston/Bus/Map/main/Main;->getSelectedBusPredictions()I
move-result v7
iget-object v8, p0, Lboston/Bus/Map/main/Main;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
iget-object v9, p0, Lboston/Bus/Map/main/Main;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
iget-object v10, p0, Lboston/Bus/Map/main/Main;->myLocationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
iget-object v11, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-virtual {v11}, Lboston/Bus/Map/main/UpdateHandler;->getMajorHandler()Lboston/Bus/Map/main/UpdateAsyncTask;
move-result-object v11
invoke-direct/range {v0 .. v11}, Lboston/Bus/Map/main/CurrentState;-><init>(Landroid/widget/TextView;Lboston/Bus/Map/data/Locations;DZIILboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Lboston/Bus/Map/main/UpdateAsyncTask;)V
return-object v0
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
if-eqz v0, :cond_12
iget-object v0, p0, Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
const/16 v1, 0xfa
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate(I)V
iget-object v0, p0, Lboston/Bus/Map/main/Main;->mapView:Lcom/google/android/maps/MapView;
invoke-virtual {v0, p1}, Lcom/google/android/maps/MapView;->onTrackballEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public setFavoriteStatus(I)V
.registers 3
iget-object v0, p0, Lboston/Bus/Map/main/Main;->favoriteMenuItem:Landroid/view/MenuItem;
if-eqz v0, :cond_9
iget-object v0, p0, Lboston/Bus/Map/main/Main;->favoriteMenuItem:Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:cond_9
iput p1, p0, Lboston/Bus/Map/main/Main;->currentFavoriteStatus:I
return-void
.end method