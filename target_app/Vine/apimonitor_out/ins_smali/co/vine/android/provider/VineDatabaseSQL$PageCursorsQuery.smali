.class public final Lco/vine/android/provider/VineDatabaseSQL$PageCursorsQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"
.field public static final INDEX_ANCHOR:I = 0x6
.field public static final INDEX_ID:I = 0x0
.field public static final INDEX_KIND:I = 0x3
.field public static final INDEX_NEXT_PAGE:I = 0x4
.field public static final INDEX_PREVIOUS_PAGE:I = 0x5
.field public static final INDEX_REVERSED:I = 0x7
.field public static final INDEX_TAG:I = 0x2
.field public static final INDEX_TYPE:I = 0x1
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "type"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "tag"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "kind"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "next_page"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "previous_page"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "anchor"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "reversed"
aput-object v2, v0, v1
sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$PageCursorsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method