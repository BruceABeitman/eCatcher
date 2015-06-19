.class public Lcom/instagram/common/a/a/i;
.super Ljava/lang/Object;
.source "LoaderRequestPerformer.java"
.implements Lcom/instagram/common/a/a/m;
.field private static final a:Ljava/lang/Class;
.field private final b:Landroid/content/Context;
.field private final c:Landroid/support/v4/app/an;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/common/a/a/i;
sput-object v0, Lcom/instagram/common/a/a/i;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/a/a/i;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/common/a/a/i;->c:Landroid/support/v4/app/an;
return-void
.end method
.method static synthetic a(Lcom/instagram/common/a/a/i;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/a/i;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/common/a/a/i;)Landroid/support/v4/app/an;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/a/i;->c:Landroid/support/v4/app/an;
return-object v0
.end method
.method public final a(Lcom/instagram/common/a/a/a;)V
.registers 4
new-instance v0, Lcom/instagram/common/a/a/j;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/a/a/j;-><init>(Lcom/instagram/common/a/a/i;Lcom/instagram/common/a/a/a;B)V
iget-object v1, p0, Lcom/instagram/common/a/a/i;->c:Landroid/support/v4/app/an;
invoke-static {v0, v1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/a/a/j;Landroid/support/v4/app/an;)V
return-void
.end method