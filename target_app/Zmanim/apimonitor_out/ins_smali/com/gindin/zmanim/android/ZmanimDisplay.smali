.class  Lcom/gindin/zmanim/android/ZmanimDisplay;
.super Ljava/lang/Object;
.source "ZmanimDisplay.java"
.field private final listActivity:Landroid/app/ListActivity;
.field private final preferences:Landroid/content/SharedPreferences;
.field private final selector:Lcom/gindin/zmanim/android/ZmanimSelector;
.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.method constructor <init>(Landroid/app/ListActivity;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
iput-object p2, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
new-instance v0, Lcom/gindin/zmanim/android/ZmanimSelector;
invoke-direct {v0, p1, p2}, Lcom/gindin/zmanim/android/ZmanimSelector;-><init>(Landroid/content/Context;Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
iput-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->selector:Lcom/gindin/zmanim/android/ZmanimSelector;
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimDisplay;->listenToRows()V
new-instance v0, Lcom/gindin/zmanim/android/ZmanimDisplay$1;
invoke-direct {v0, p0, p1}, Lcom/gindin/zmanim/android/ZmanimDisplay$1;-><init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/app/ListActivity;)V
invoke-virtual {p2, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->addListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
sget-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->ZMANIM_SELECTION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/app/ListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->preferences:Landroid/content/SharedPreferences;
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getListAdapter()Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method static synthetic access$000(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
.registers 2
invoke-direct {p0}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getListAdapter()Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->preferences:Landroid/content/SharedPreferences;
return-object v0
.end method
.method static synthetic access$300(Lcom/gindin/zmanim/android/ZmanimDisplay;)Landroid/app/ListActivity;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
return-object v0
.end method
.method static synthetic access$400(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/android/ZmanimSelector;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->selector:Lcom/gindin/zmanim/android/ZmanimSelector;
return-object v0
.end method
.method static synthetic access$500(Lcom/gindin/zmanim/android/ZmanimDisplay;)Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
return-object v0
.end method
.method private getListAdapter()Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
.registers 9
invoke-static {}, Lcom/gindin/zmanim/times/Zmanim$Type;->values()[Lcom/gindin/zmanim/times/Zmanim$Type;
move-result-object v5
array-length v2, v5
iget-object v5, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v5}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->showCandlelighting()Z
move-result v3
if-nez v3, :cond_f
add-int/lit8 v2, v2, -0x1
:cond_f
new-array v4, v2, [Lcom/gindin/zmanim/times/Zman;
const/4 v0, 0x0
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->Talit:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->Hanetz:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanShema:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->Chatzot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaKetana:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
if-eqz v3, :cond_b3
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->CandleLighting:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
:goto_78
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->Shkia:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->LatestMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
add-int/lit8 v0, v1, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v0, 0x1
sget-object v5, Lcom/gindin/zmanim/times/Zmanim$Type;->NightChatzot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {p0, v5}, Lcom/gindin/zmanim/android/ZmanimDisplay;->getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
move-result-object v5
aput-object v5, v4, v0
new-instance v5, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;
iget-object v6, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
const/4 v7, 0x0
invoke-direct {v5, p0, v6, v4, v7}, Lcom/gindin/zmanim/android/ZmanimDisplay$ListAdapter;-><init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Landroid/content/Context;[Lcom/gindin/zmanim/times/Zman;Lcom/gindin/zmanim/android/ZmanimDisplay$1;)V
return-object v5
:cond_b3
move v0, v1
goto :goto_78
.end method
.method private getZmanForType(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zman;
.registers 8
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->zmanimCalendar:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-virtual {v3, p1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->get(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->preferences:Landroid/content/SharedPreferences;
iget-object v4, p1, Lcom/gindin/zmanim/times/Zmanim$Type;->name:Ljava/lang/String;
invoke-virtual {v2}, Lcom/gindin/zmanim/times/Zmanim;->getDefault()Lcom/gindin/zmanim/times/Zman;
move-result-object v5
iget-object v5, v5, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/gindin/zmanim/times/Zmanim;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
move-result-object v0
if-nez v0, :cond_1e
invoke-virtual {v2}, Lcom/gindin/zmanim/times/Zmanim;->getDefault()Lcom/gindin/zmanim/times/Zman;
move-result-object v0
:cond_1e
return-object v0
.end method
.method private listenToRows()V
.registers 4
new-instance v0, Lcom/gindin/zmanim/android/ZmanimDisplay$2;
invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/ZmanimDisplay$2;-><init>(Lcom/gindin/zmanim/android/ZmanimDisplay;)V
iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimDisplay;->listActivity:Landroid/app/ListActivity;
invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;
move-result-object v1
new-instance v2, Lcom/gindin/zmanim/android/ZmanimDisplay$3;
invoke-direct {v2, p0, v0}, Lcom/gindin/zmanim/android/ZmanimDisplay$3;-><init>(Lcom/gindin/zmanim/android/ZmanimDisplay;Lcom/gindin/zmanim/android/ZmanimSelector$SelectionCallback;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method