.class public Lcom/instagram/creation/video/ui/VideoCancelButton;
.super Landroid/widget/ImageView;
.source "VideoCancelButton.java"
.implements Lcom/instagram/creation/video/a/d;
.field private a:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget v0, Lcom/instagram/creation/video/a/e;->d:I
iput v0, p0, Lcom/instagram/creation/video/ui/VideoCancelButton;->a:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget v0, Lcom/instagram/creation/video/a/e;->d:I
iput v0, p0, Lcom/instagram/creation/video/ui/VideoCancelButton;->a:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget v0, Lcom/instagram/creation/video/a/e;->d:I
iput v0, p0, Lcom/instagram/creation/video/ui/VideoCancelButton;->a:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->a()V
return-void
.end method
.method private a()V
.registers 3
iget v0, p0, Lcom/instagram/creation/video/ui/VideoCancelButton;->a:I
sget v1, Lcom/instagram/creation/video/a/e;->d:I
if-ne v0, v1, :cond_e
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->setEnabled(Z)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->requestLayout()V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/video/ui/VideoCancelButton;->a:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/VideoCancelButton;->a()V
return-void
.end method