.class public final Lcom/instagram/share/b/f;
.super Ljava/lang/Object;
.source "FacebookConstants.java"
.field public static final a:[Ljava/lang/String;
.field public static final b:[Ljava/lang/String;
.field public static final c:[Ljava/lang/String;
.field public static final d:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v4, [Ljava/lang/String;
const-string v1, "publish_stream"
aput-object v1, v0, v2
const-string v1, "publish_actions"
aput-object v1, v0, v3
sput-object v0, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "email"
aput-object v1, v0, v2
sput-object v0, Lcom/instagram/share/b/f;->b:[Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
sput-object v0, Lcom/instagram/share/b/f;->c:[Ljava/lang/String;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const-string v1, "publish_stream"
aput-object v1, v0, v2
const-string v1, "manage_pages"
aput-object v1, v0, v3
const-string v1, "publish_actions"
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/share/b/f;->d:[Ljava/lang/String;
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 1
const-string v0, "124024574287414"
return-object v0
.end method
.method public static b()Ljava/lang/String;
.registers 1
const-string v0, "84a456d620314b6e92a16d8ff1c792dc"
return-object v0
.end method
.method public static c()Ljava/lang/String;
.registers 1
const-string v0, "493186350727442"
return-object v0
.end method
.method public static d()Ljava/lang/String;
.registers 1
const-string v0, "624618737631578"
return-object v0
.end method