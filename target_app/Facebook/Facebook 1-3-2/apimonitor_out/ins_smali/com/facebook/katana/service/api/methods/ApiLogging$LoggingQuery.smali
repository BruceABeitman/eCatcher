.class public interface abstract Lcom/facebook/katana/service/api/methods/ApiLogging$LoggingQuery;
.super Ljava/lang/Object;
.source "ApiLogging.java"
.field public static final LOG_INDEX:I
.field public static final LOG_PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "api_log"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiLogging$LoggingQuery;->LOG_PROJECTION:[Ljava/lang/String;
return-void
.end method