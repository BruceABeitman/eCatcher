.class public Lcom/ibm/icu/impl/data/HolidayBundle_iw;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_iw.java"
.field private static final fContents:[[Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-array v0, v4, [[Ljava/lang/Object;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const-string v2, ""
aput-object v2, v1, v3
const-string v2, ""
aput-object v2, v1, v4
aput-object v1, v0, v3
sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_iw;->fContents:[[Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V
return-void
.end method
.method public declared-synchronized getContents()[[Ljava/lang/Object;
.registers 2
monitor-enter p0
:try_start_1
sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_iw;->fContents:[[Ljava/lang/Object;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method