.class public final Lcom/instagram/ui/menu/f;
.super Ljava/lang/Object;
.source "MenuItem.java"
.field private a:I
.field private b:Ljava/lang/CharSequence;
.field private c:Landroid/view/View$OnClickListener;
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/ui/menu/f;->a:I
iput-object p2, p0, Lcom/instagram/ui/menu/f;->c:Landroid/view/View$OnClickListener;
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/ui/menu/f;->b:Ljava/lang/CharSequence;
return-void
.end method
.method public final a()Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/menu/f;->c:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/ui/menu/f;->a:I
return v0
.end method
.method public final c()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/menu/f;->b:Ljava/lang/CharSequence;
return-object v0
.end method