.class public Lcom/fsck/k9/activity/DateFormatter;
.super Ljava/lang/Object;
.source "DateFormatter.java"
.field public static final DEFAULT_FORMAT:Ljava/lang/String; = "SHORT"
.field public static final MEDIUM_FORMAT:Ljava/lang/String; = "MEDIUM"
.field public static final PREF_KEY:Ljava/lang/String; = "dateFormat"
.field private static final SAMPLE_DATE:Ljava/util/Calendar; = null
.field public static final SHORT_FORMAT:Ljava/lang/String; = "SHORT"
.field private static volatile sChosenFormat:Ljava/lang/String;
.field private static storedFormats:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 5
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
sput-object v0, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
sget-object v0, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
sget-object v1, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I
move-result v1
sget-object v2, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
const/4 v3, 0x2
invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I
move-result v2
sget-object v3, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
const/4 v4, 0x5
invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I
move-result v3
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V
const/4 v0, 0x0
sput-object v0, Lcom/fsck/k9/activity/DateFormatter;->sChosenFormat:Ljava/lang/String;
new-instance v0, Lcom/fsck/k9/activity/DateFormatter$1;
invoke-direct {v0}, Lcom/fsck/k9/activity/DateFormatter$1;-><init>()V
sput-object v0, Lcom/fsck/k9/activity/DateFormatter;->storedFormats:Ljava/lang/ThreadLocal;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
.registers 3
invoke-static {p0}, Lcom/fsck/k9/activity/DateFormatter;->getFormat(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/fsck/k9/activity/DateFormatter;->getDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
move-result-object v1
return-object v1
.end method
.method public static getDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
.registers 5
const-string v2, "SHORT"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
move-result-object v0
:cond_c
:goto_c
return-object v0
:cond_d
const-string v2, "MEDIUM"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1a
invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
move-result-object v0
goto :goto_c
:cond_1a
sget-object v2, Lcom/fsck/k9/activity/DateFormatter;->storedFormats:Ljava/lang/ThreadLocal;
invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/text/DateFormat;
if-nez v0, :cond_c
new-instance v0, Ljava/text/SimpleDateFormat;
invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
.end method
.method public static getFormat(Landroid/content/Context;)Ljava/lang/String;
.registers 6
sget-object v2, Lcom/fsck/k9/activity/DateFormatter;->sChosenFormat:Ljava/lang/String;
if-nez v2, :cond_16
invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "dateFormat"
const-string v4, "SHORT"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/fsck/k9/activity/DateFormatter;->sChosenFormat:Ljava/lang/String;
:cond_16
sget-object v2, Lcom/fsck/k9/activity/DateFormatter;->sChosenFormat:Ljava/lang/String;
return-object v2
.end method
.method public static getFormats(Landroid/content/Context;)[Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f05001e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getSampleDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p0, p1}, Lcom/fsck/k9/activity/DateFormatter;->getDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
move-result-object v0
sget-object v1, Lcom/fsck/k9/activity/DateFormatter;->SAMPLE_DATE:Ljava/util/Calendar;
invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static setDateFormat(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.registers 3
sput-object p1, Lcom/fsck/k9/activity/DateFormatter;->sChosenFormat:Ljava/lang/String;
const-string v0, "dateFormat"
invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
return-void
.end method