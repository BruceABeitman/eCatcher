.class public final Lcom/lenovo/anyshare/sdk/internal/aw;
.super Ljava/lang/Object;
.source "ObjectStore.java"
.field private static a:Ljava/util/Map;
.field private static b:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/aw;->a:Ljava/util/Map;
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/aw;->b:Landroid/content/Context;
return-void
.end method
.method public static a()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/aw;->b:Landroid/content/Context;
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 1
sput-object p0, Lcom/lenovo/anyshare/sdk/internal/aw;->b:Landroid/content/Context;
return-void
.end method