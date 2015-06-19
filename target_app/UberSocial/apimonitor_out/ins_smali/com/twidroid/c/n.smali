.class public Lcom/twidroid/c/n;
.super Landroid/app/Dialog;
.source "SourceFile"
.field private a:[Ljava/lang/String;
.field private b:Lcom/twidroid/c/o;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f06000a
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/n;->a:[Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/twidroid/c/n;)Lcom/twidroid/c/o;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/n;->b:Lcom/twidroid/c/o;
return-object v0
.end method
.method public a(Lcom/twidroid/c/o;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/n;->b:Lcom/twidroid/c/o;
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/c/n; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03004b
invoke-virtual {p0, v0}, Lcom/twidroid/c/n;->setContentView(I)V
const v0, 0x7f0900fe
invoke-virtual {p0, v0}, Lcom/twidroid/c/n;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
new-instance v1, Lcom/twidroid/c/p;
iget-object v2, p0, Lcom/twidroid/c/n;->a:[Ljava/lang/String;
invoke-direct {v1, p0, v2}, Lcom/twidroid/c/p;-><init>(Lcom/twidroid/c/n;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
const-string v0, "Insert Symbol"
invoke-virtual {p0, v0}, Lcom/twidroid/c/n;->setTitle(Ljava/lang/CharSequence;)V
const v0, 0x7f090100
invoke-virtual {p0, v0}, Lcom/twidroid/c/n;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/n$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/n$1;-><init>(Lcom/twidroid/c/n;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/twidroid/c/n; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method