.class public final Lcom/bbm/ui/views/w;
.super Ljava/lang/Object;
.source "QuickActionAttachmentsView.java"
.field final a:I
.field final b:I
.field final c:Lcom/bbm/j/r;
.field final d:Ljava/lang/String;
.field final e:Landroid/view/View$OnClickListener;
.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/bbm/ui/views/w;->a:I
iput p2, p0, Lcom/bbm/ui/views/w;->b:I
iput-object p3, p0, Lcom/bbm/ui/views/w;->e:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/bbm/ui/views/w;->c:Lcom/bbm/j/r;
iput-object v0, p0, Lcom/bbm/ui/views/w;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/bbm/j/r;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/views/w;->c:Lcom/bbm/j/r;
iput-object p2, p0, Lcom/bbm/ui/views/w;->d:Ljava/lang/String;
const v0, 0x7f020375
iput v0, p0, Lcom/bbm/ui/views/w;->a:I
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/views/w;->b:I
iput-object p3, p0, Lcom/bbm/ui/views/w;->e:Landroid/view/View$OnClickListener;
return-void
.end method