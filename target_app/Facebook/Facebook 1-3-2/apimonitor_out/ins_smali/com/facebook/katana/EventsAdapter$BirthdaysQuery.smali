.class interface abstract Lcom/facebook/katana/EventsAdapter$BirthdaysQuery;
.super Ljava/lang/Object;
.source "EventsAdapter.java"
.field public static final INDEX_BIRTHDAY_MONTH:I = 0x3
.field public static final INDEX_BIRTHDAY_YEAR:I = 0x5
.field public static final INDEX_NORMALIZED_BIRTHDAY_DAY:I = 0x4
.field public static final INDEX_USER_DISPLAY_NAME:I = 0x2
.field public static final INDEX_USER_ID:I = 0x1
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "user_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "display_name"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "birthday_month"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "normalized_birthday_day"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "birthday_year"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/EventsAdapter$BirthdaysQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method