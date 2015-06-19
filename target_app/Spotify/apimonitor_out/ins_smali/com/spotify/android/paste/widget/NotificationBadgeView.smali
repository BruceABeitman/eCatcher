.class public Lcom/spotify/android/paste/widget/NotificationBadgeView;
.super Landroid/widget/TextView;
.source "SourceFile"
.field private a:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->r:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 10
const/4 v4, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-class v0, Lcom/spotify/android/paste/widget/NotificationBadgeView;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/android/paste/e;->t:[I
invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
const/4 v3, 0x2
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
const/4 v4, 0x3
const/16 v5, 0x63
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v4
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-static {p1, p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {p0, v3}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->setMinWidth(I)V
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->setVisibility(I)V
iput v4, p0, Lcom/spotify/android/paste/widget/NotificationBadgeView;->a:I
return-void
.end method
.method public final a(I)V
.registers 4
iget v0, p0, Lcom/spotify/android/paste/widget/NotificationBadgeView;->a:I
if-le p1, v0, :cond_27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v1, p0, Lcom/spotify/android/paste/widget/NotificationBadgeView;->a:I
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "+"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1d
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->setText(Ljava/lang/CharSequence;)V
if-lez p1, :cond_2c
const/4 v0, 0x0
:goto_23
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->setVisibility(I)V
return-void
:cond_27
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_2c
const/16 v0, 0x8
goto :goto_23
.end method