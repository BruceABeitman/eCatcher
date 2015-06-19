.class public Lcom/facebook/a/l;
.super Lcom/facebook/widget/ax;
.source "SourceFile"
.field private d:Lcom/facebook/a/f;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/f;)V
.registers 11
const v4, 0x1030010
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/bc;)V
invoke-direct {p0, p4}, Lcom/facebook/a/l;->a(Lcom/facebook/a/f;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/a/f;I)V
.registers 12
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p5
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/bc;)V
invoke-direct {p0, p4}, Lcom/facebook/a/l;->a(Lcom/facebook/a/f;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/f;)V
.registers 5
const v0, 0x1030010
invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/a/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/f;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/f;I)V
.registers 5
invoke-direct {p0, p1, p2, p4}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
invoke-direct {p0, p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/f;)V
return-void
.end method
.method private a(Landroid/os/Bundle;Lcom/facebook/t;)V
.registers 7
iget-object v0, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
if-eqz p1, :cond_d
iget-object v0, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
invoke-interface {v0, p1}, Lcom/facebook/a/f;->a(Landroid/os/Bundle;)V
goto :goto_4
:cond_d
instance-of v0, p2, Lcom/facebook/s;
if-eqz v0, :cond_2a
check-cast p2, Lcom/facebook/s;
new-instance v0, Lcom/facebook/a/d;
invoke-virtual {p2}, Lcom/facebook/s;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lcom/facebook/s;->a()I
move-result v2
invoke-virtual {p2}, Lcom/facebook/s;->b()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
invoke-interface {v1, v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/d;)V
goto :goto_4
:cond_2a
instance-of v0, p2, Lcom/facebook/v;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
invoke-interface {v0}, Lcom/facebook/a/f;->a()V
goto :goto_4
:cond_34
new-instance v0, Lcom/facebook/a/k;
invoke-virtual {p2}, Lcom/facebook/t;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
invoke-interface {v1, v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/k;)V
goto :goto_4
.end method
.method private a(Lcom/facebook/a/f;)V
.registers 3
iput-object p1, p0, Lcom/facebook/a/l;->d:Lcom/facebook/a/f;
new-instance v0, Lcom/facebook/a/l$1;
invoke-direct {v0, p0}, Lcom/facebook/a/l$1;-><init>(Lcom/facebook/a/l;)V
invoke-virtual {p0, v0}, Lcom/facebook/a/l;->a(Lcom/facebook/widget/bc;)V
return-void
.end method
.method static synthetic a(Lcom/facebook/a/l;Landroid/os/Bundle;Lcom/facebook/t;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/a/l;->a(Landroid/os/Bundle;Lcom/facebook/t;)V
return-void
.end method