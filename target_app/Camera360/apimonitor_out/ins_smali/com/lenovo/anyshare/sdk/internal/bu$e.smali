.class public Lcom/lenovo/anyshare/sdk/internal/bu$e;
.super Lcom/lenovo/anyshare/sdk/internal/bu$a;
.source "LocalPIMLoaders.java"
.field private static c:Lcom/lenovo/anyshare/sdk/internal/bu$e;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$e;->c:Lcom/lenovo/anyshare/sdk/internal/bu$e;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bu$a;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)Lcom/lenovo/anyshare/sdk/internal/bu$e;
.registers 3
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bu$e;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bu$e;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$e;->c:Lcom/lenovo/anyshare/sdk/internal/bu$e;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bu$e;->c:Lcom/lenovo/anyshare/sdk/internal/bu$e;
return-object v0
.end method
.method public b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 4
const-string/jumbo v0, "createItem(): Don\'t support create SMS item."
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
.end method