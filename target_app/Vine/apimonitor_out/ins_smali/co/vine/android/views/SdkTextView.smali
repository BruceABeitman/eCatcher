.class public Lco/vine/android/views/SdkTextView;
.super Landroid/widget/TextView;
.source "SdkTextView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
.parameter
.end parameter
:try_start_0
invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
:try_end_3
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5
.catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_3} :catch_5
move-result v1
:goto_4
return v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method