.class interface abstract Lcom/facebook/katana/platform/PlatformStorage$ProfileQuery;
.super Ljava/lang/Object;
.source "PlatformStorage.java"
.field public static final COLUMN_ID:I
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/platform/PlatformStorage$ProfileQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method