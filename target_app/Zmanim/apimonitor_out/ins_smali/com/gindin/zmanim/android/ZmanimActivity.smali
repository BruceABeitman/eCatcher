.class public Lcom/gindin/zmanim/android/ZmanimActivity;
.super Landroid/app/ListActivity;
.source "ZmanimActivity.java"
.field private static final UNABLE_TO_DETERMINE_LOCATION_DIALOG_ID:I = 0x3e8
.field private buildUITask:Landroid/os/AsyncTask;
.field private determiningLocationDialog:Landroid/app/ProgressDialog;
.field private gestureDetector:Landroid/view/GestureDetector;
.field private locationListener:Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
.field private locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.field private personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
.field private zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.field private zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
return-void
.end method
.method static synthetic access$000(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic access$100(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimActivity;->rebuildUI(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method
.method static synthetic access$1000(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
return-object v0
.end method
.method static synthetic access$1100(Lcom/gindin/zmanim/android/ZmanimActivity;Lnet/sourceforge/zmanim/util/GeoLocation;)V
.registers 2
invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity;->buildHeader(Lnet/sourceforge/zmanim/util/GeoLocation;)V
return-void
.end method
.method static synthetic access$1200(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimActivity;->buildFooter(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method
.method static synthetic access$1300(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
return-object v0
.end method
.method static synthetic access$1302(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
return-object p1
.end method
.method static synthetic access$1400(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 1
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateHeader()V
return-void
.end method
.method static synthetic access$1502(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
return-object p1
.end method
.method static synthetic access$200(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 1
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->setupViewListeners()V
return-void
.end method
.method static synthetic access$300(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
return-object v0
.end method
.method static synthetic access$302(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
return-object p1
.end method
.method static synthetic access$400(Lcom/gindin/zmanim/android/ZmanimActivity;)Landroid/view/GestureDetector;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->gestureDetector:Landroid/view/GestureDetector;
return-object v0
.end method
.method static synthetic access$402(Lcom/gindin/zmanim/android/ZmanimActivity;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->gestureDetector:Landroid/view/GestureDetector;
return-object p1
.end method
.method static synthetic access$600(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationListener:Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
return-object v0
.end method
.method static synthetic access$700(Lcom/gindin/zmanim/android/ZmanimActivity;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
return-object v0
.end method
.method static synthetic access$702(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
return-object p1
.end method
.method static synthetic access$800(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 1
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->moveToNextDay()V
return-void
.end method
.method static synthetic access$900(Lcom/gindin/zmanim/android/ZmanimActivity;)V
.registers 1
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->moveToPrevDay()V
return-void
.end method
.method private buildFooter(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 5
if-nez p2, :cond_b
const v0, 0x7f07000b
const-string v1, ""
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILjava/lang/String;)V
:goto_a
return-void
:cond_b
invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimActivity;->handleLocationError(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
goto :goto_a
.end method
.method private buildHeader(Lnet/sourceforge/zmanim/util/GeoLocation;)V
.registers 8
const v5, 0x7f070005
const v3, 0x7f070006
invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/gindin/zmanim/android/ZmanimActivity$3;
invoke-direct {v3, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$3;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-nez p1, :cond_2f
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f05001c
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_1f
invoke-virtual {p0, v5}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v3, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->setLocationField(Landroid/view/View;)V
invoke-direct {p0, v5, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILjava/lang/String;)V
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateHeader()V
return-void
:cond_2f
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;
move-result-object v1
goto :goto_1f
.end method
.method private cleanupCalendarListeners()V
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendarListener:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
invoke-virtual {v0, v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->removeListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
:cond_f
return-void
.end method
.method private createEnableLocationSourcesDialog()Landroid/app/Dialog;
.registers 9
const v7, 0x7f070002
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v5, 0x7f050016
invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
const-string v5, "layout_inflater"
invoke-virtual {p0, v5}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const v5, 0x7f030001
const/4 v6, 0x0
invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/webkit/WebView;
invoke-direct {p0, v7}, Lcom/gindin/zmanim/android/ZmanimActivity;->getTextLocation(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "file:///android_asset/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const v5, 0x7f050017
new-instance v6, Lcom/gindin/zmanim/android/ZmanimActivity$7;
invoke-direct {v6, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$7;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v5
return-object v5
.end method
.method private createHtmlTextDialog(III)Landroid/app/Dialog;
.registers 11
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
const-string v5, "layout_inflater"
invoke-virtual {p0, v5}, Lcom/gindin/zmanim/android/ZmanimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const/4 v5, 0x0
invoke-virtual {v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/webkit/WebView;
invoke-direct {p0, p3}, Lcom/gindin/zmanim/android/ZmanimActivity;->getTextLocation(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "file:///android_asset/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v5
return-object v5
.end method
.method private createSecularDatePickerDialog()Landroid/app/Dialog;
.registers 8
new-instance v2, Lcom/gindin/zmanim/android/ZmanimActivity$6;
invoke-direct {v2, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$6;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->getSecularDate()Ljava/util/Calendar;
move-result-object v6
new-instance v0, Landroid/app/DatePickerDialog;
const/4 v1, 0x1
invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I
move-result v3
const/4 v1, 0x2
invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I
move-result v4
const/4 v1, 0x5
invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I
move-result v5
move-object v1, p0
invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
return-object v0
.end method
.method private getTextLocation(I)Ljava/lang/String;
.registers 3
const v0, 0x7f070003
if-ne v0, p1, :cond_8
const-string v0, "com/gindin/zmanim/android/help.html"
:goto_7
return-object v0
:cond_8
const v0, 0x7f070001
if-ne v0, p1, :cond_10
const-string v0, "com/gindin/zmanim/android/about.html"
goto :goto_7
:cond_10
const v0, 0x7f070002
if-ne v0, p1, :cond_18
const-string v0, "com/gindin/zmanim/android/enable_locations.html"
goto :goto_7
:cond_18
const/4 v0, 0x0
goto :goto_7
.end method
.method private handleLocationError(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 16
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f050018
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v5, 0x1
invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
const-string v2, ""
sget-object v5, Lcom/gindin/zmanim/android/ZmanimActivity$8;->$SwitchMap$com$gindin$zmanim$android$location$LocationError$Code:[I
iget-object v6, p2, Lcom/gindin/zmanim/android/location/LocationError;->errorCode:Lcom/gindin/zmanim/android/location/LocationError$Code;
invoke-virtual {v6}, Lcom/gindin/zmanim/android/location/LocationError$Code;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_d6
const/4 v0, 0x0
:goto_23
if-nez v0, :cond_ad
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_36
const v5, 0x7f07000b
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "<br/>"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILandroid/text/Spanned;)V
return-void
:pswitch_54
const-string v2, "No location manager??? Internal error..."
const/4 v0, 0x0
goto :goto_23
:pswitch_58
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f05001a
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
if-eqz p1, :cond_94
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f05001b
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
new-instance v10, Ljava/util/Date;
iget-wide v11, p1, Lcom/gindin/zmanim/android/location/ZmanimLocation;->locationTime:J
invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V
aput-object v10, v8, v9
invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_94
const/4 v0, 0x0
goto :goto_23
:pswitch_96
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f050019
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v0, Lcom/gindin/zmanim/android/ZmanimActivity$4;
invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$4;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
goto/16 :goto_23
:pswitch_a8
iget-object v2, p2, Lcom/gindin/zmanim/android/location/LocationError;->message:Ljava/lang/String;
const/4 v0, 0x0
goto/16 :goto_23
:cond_ad
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " <u>"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "</u>"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const v5, 0x7f07000b
invoke-virtual {p0, v5}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_36
:pswitch_data_d6
.packed-switch 0x1
:pswitch_54
:pswitch_58
:pswitch_96
:pswitch_a8
.end packed-switch
.end method
.method private moveToNextDay()V
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->nextDay()V
return-void
.end method
.method private moveToPrevDay()V
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->previousDay()V
return-void
.end method
.method private rebuildUI(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
:cond_a
new-instance v0, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;
invoke-direct {v0, p0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimActivity$BuildUIAsyncTask;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
iput-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->buildUITask:Landroid/os/AsyncTask;
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private setupViewListeners()V
.registers 5
new-instance v2, Lcom/gindin/zmanim/android/ZmanimActivity$5;
invoke-direct {v2, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$5;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
const v3, 0x7f070004
invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v3, 0x102000a
invoke-virtual {p0, v3}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method private updateField(ILandroid/text/Spanned;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private updateField(ILjava/lang/String;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private updateHeader()V
.registers 6
const v4, 0x7f070009
const v1, 0x7f070007
iget-object v2, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v2}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->formatHebrewDate()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILjava/lang/String;)V
const v1, 0x7f070006
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "<u>"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v3}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->formatSecularDate()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "</u>"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILandroid/text/Spanned;)V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->getTodaysDescription()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4a
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_54
:cond_4a
invoke-virtual {p0, v4}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_53
return-void
:cond_54
invoke-virtual {p0, v4}, Lcom/gindin/zmanim/android/ZmanimActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f07000a
invoke-direct {p0, v1, v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->updateField(ILjava/lang/String;)V
goto :goto_53
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V
invoke-static {}, Lcom/gindin/zmanim/android/Activities;->values()[Lcom/gindin/zmanim/android/Activities;
move-result-object v1
aget-object v0, v1, p1
sget-object v1, Lcom/gindin/zmanim/android/ZmanimActivity$8;->$SwitchMap$com$gindin$zmanim$android$Activities:[I
invoke-virtual {v0}, Lcom/gindin/zmanim/android/Activities;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_3c
:goto_14
return-void
:pswitch_15
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
const v2, 0x7f050037
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->cleanupCalendarListeners()V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->onLocationProvidersChanged()V
goto :goto_14
:pswitch_2f
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationPrefsChanged()V
goto :goto_14
:pswitch_35
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->personalPrefsChanged()V
goto :goto_14
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_15
:pswitch_2f
:pswitch_35
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/gindin/zmanim/android/ZmanimActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/gindin/util/LogUtils;->startSession(Landroid/content/Context;)V
invoke-static {p0}, Lcom/gindin/zmanim/android/AppUpgrader;->handle(Lcom/gindin/zmanim/android/ZmanimActivity;)V
const v1, 0x7f030003
invoke-virtual {p0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->setContentView(I)V
new-instance v1, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-direct {v1, p0}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
iput-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
new-instance v1, Landroid/app/ProgressDialog;
invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
const-string v2, "Determining location..."
invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->determiningLocationDialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
new-instance v1, Lcom/gindin/zmanim/android/ZmanimActivity$1;
invoke-direct {v1, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$1;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
iput-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationListener:Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
new-instance v0, Lcom/gindin/zmanim/android/ZmanimActivity$2;
invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/ZmanimActivity$2;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
new-array v1, v3, [Ljava/lang/Void;
const/4 v2, 0x0
const/4 p0, 0x0
check-cast p0, Ljava/lang/Void;
aput-object p0, v1, v2
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
sparse-switch p1, :sswitch_data_2a
const/4 v0, 0x0
:goto_4
return-object v0
:sswitch_5
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->createSecularDatePickerDialog()Landroid/app/Dialog;
move-result-object v0
goto :goto_4
:sswitch_a
const v0, 0x7f050012
const/high16 v1, 0x7f03
const v2, 0x7f070001
invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->createHtmlTextDialog(III)Landroid/app/Dialog;
move-result-object v0
goto :goto_4
:sswitch_17
const v0, 0x7f050014
const v1, 0x7f030002
const v2, 0x7f070003
invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/ZmanimActivity;->createHtmlTextDialog(III)Landroid/app/Dialog;
move-result-object v0
goto :goto_4
:sswitch_25
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->createEnableLocationSourcesDialog()Landroid/app/Dialog;
move-result-object v0
goto :goto_4
:sswitch_data_2a
.sparse-switch
0x3e8 -> :sswitch_25
0x7f070006 -> :sswitch_5
0x7f070012 -> :sswitch_a
0x7f070013 -> :sswitch_17
.end sparse-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/ZmanimActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const/high16 v1, 0x7f06
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/gindin/zmanim/android/ZmanimActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationListener:Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
invoke-virtual {v0, v1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->removeListener(Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;)V
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->onDestroy()V
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimActivity;->cleanupCalendarListeners()V
invoke-static {p0}, Lcom/gindin/util/LogUtils;->endSession(Landroid/content/Context;)V
invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/gindin/zmanim/android/ZmanimActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_22
:goto_8
const/4 v1, 0x0
:goto_9
move v2, v1
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_a
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->personalPrefsManager:Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/prefs/PersonalPrefsManager;->editPersonalPrefs()V
goto :goto_8
:pswitch_10
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->editLocationPrefs()V
move v1, v2
goto :goto_9
:pswitch_17
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->showDialog(I)V
move v1, v2
goto :goto_9
:pswitch_1c
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/android/ZmanimActivity;->showDialog(I)V
move v1, v2
goto :goto_9
nop
:pswitch_data_22
.packed-switch 0x7f070010
:pswitch_10
:pswitch_a
:pswitch_17
:pswitch_1c
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/gindin/zmanim/android/ZmanimActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onPause()V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/gindin/zmanim/android/ZmanimActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onResume()V
const-string v1, " - Lcom/gindin/zmanim/android/ZmanimActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->gestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public rebuildUI()V
.registers 3
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimActivity;->locationManager:Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->getLastKnownLocation()Lcom/gindin/zmanim/android/location/ZmanimLocation;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->rebuildUI(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/android/location/LocationError;)V
return-void
.end method