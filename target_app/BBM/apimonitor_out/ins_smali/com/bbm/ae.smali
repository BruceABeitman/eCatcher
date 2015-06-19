.class public final Lcom/bbm/ae;
.super Ljava/lang/Object;
.source "ServerConfig.java"
.field public static a:Ljava/lang/String;
.field public static b:Ljava/lang/String;
.field public static c:Z
.field public static d:Z
.field public static e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x1
const-string v0, "production"
sput-object v0, Lcom/bbm/ae;->a:Ljava/lang/String;
const-string v0, "production"
sput-object v0, Lcom/bbm/ae;->b:Ljava/lang/String;
sput-boolean v1, Lcom/bbm/ae;->c:Z
sput-boolean v1, Lcom/bbm/ae;->d:Z
const-string v0, "https://meetings.bbm.com/download"
sput-object v0, Lcom/bbm/ae;->e:Ljava/lang/String;
return-void
.end method