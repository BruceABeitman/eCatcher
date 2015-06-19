.class final Lcom/instagram/common/a/a/j;
.super Ljava/lang/Object;
.source "LoaderRequestPerformer.java"
.implements Landroid/support/v4/app/ao;
.field final synthetic a:Lcom/instagram/common/a/a/i;
.field private final b:I
.field private final c:Lcom/instagram/common/a/a/a;
.method private constructor <init>(Lcom/instagram/common/a/a/i;Lcom/instagram/common/a/a/a;)V
.registers 4
iput-object p1, p0, Lcom/instagram/common/a/a/j;->a:Lcom/instagram/common/a/a/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
iput v0, p0, Lcom/instagram/common/a/a/j;->b:I
iput-object p2, p0, Lcom/instagram/common/a/a/j;->c:Lcom/instagram/common/a/a/a;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/a/a/i;Lcom/instagram/common/a/a/a;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/a/a/j;-><init>(Lcom/instagram/common/a/a/i;Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/a/j;->c:Lcom/instagram/common/a/a/a;
return-object v0
.end method
.method private a(Landroid/support/v4/app/an;)V
.registers 4
iget v0, p0, Lcom/instagram/common/a/a/j;->b:I
const/4 v1, 0x0
invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/an;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/a/c;
return-void
.end method
.method static synthetic a(Lcom/instagram/common/a/a/j;Landroid/support/v4/app/an;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/a/a/j;->a(Landroid/support/v4/app/an;)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
.registers 4
iget-object v0, p0, Lcom/instagram/common/a/a/j;->c:Lcom/instagram/common/a/a/a;
invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->j()V
new-instance v0, Lcom/instagram/common/a/a/k;
iget-object v1, p0, Lcom/instagram/common/a/a/j;->a:Lcom/instagram/common/a/a/i;
invoke-static {v1}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/a/a/i;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/common/a/a/k;-><init>(Lcom/instagram/common/a/a/j;Landroid/content/Context;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/instagram/common/a/a/j;->c:Lcom/instagram/common/a/a/a;
invoke-virtual {v0, p2}, Lcom/instagram/common/a/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/common/a/a/j;->a:Lcom/instagram/common/a/a/i;
invoke-static {v0}, Lcom/instagram/common/a/a/i;->b(Lcom/instagram/common/a/a/i;)Landroid/support/v4/app/an;
move-result-object v0
iget v1, p0, Lcom/instagram/common/a/a/j;->b:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(I)V
return-void
.end method