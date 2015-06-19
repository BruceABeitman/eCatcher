.class public Lcom/glympse/android/controls/GButtonControl;
.super Landroid/widget/LinearLayout;
.source "GButtonControl.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final TAG:Ljava/lang/String; = "GButtonControl"
.field protected _button:Landroid/widget/ImageButton;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/glympse/android/controls/GButtonControl;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/glympse/android/controls/GButtonControl;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
invoke-virtual {p0, p0, p1}, Lcom/glympse/android/controls/GButtonControl;->create(Landroid/view/ViewGroup;Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
invoke-virtual {p0, p0, p1}, Lcom/glympse/android/controls/GButtonControl;->create(Landroid/view/ViewGroup;Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
invoke-virtual {p0, p0, p1}, Lcom/glympse/android/controls/GButtonControl;->create(Landroid/view/ViewGroup;Landroid/content/Context;)V
return-void
.end method
.method protected create(Landroid/view/ViewGroup;Landroid/content/Context;)V
.registers 6
const-string v0, "layout_inflater"
invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
sget v1, Lcom/glympse/android/controls/R$layout;->glympse_button:I
const/4 v2, 0x1
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
sget v0, Lcom/glympse/android/controls/R$id;->inner_glympse_button:I
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/GButtonControl;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
return-void
.end method
.method public setButtonState(Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;)V
.registers 4
sget-object v0, Lcom/glympse/android/controls/GButtonControl$1;->$SwitchMap$com$glympse$android$controls$GButtonControl$BUTTON_STATE:[I
invoke-virtual {p1}, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_30
sget-boolean v0, Lcom/glympse/android/controls/GButtonControl;->$assertionsDisabled:Z
if-nez v0, :cond_1c
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_15
iget-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_button_normal:I
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
:cond_1c
:goto_1c
return-void
:pswitch_1d
iget-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
sget v1, Lcom/glympse/android/controls/R$drawable;->glympse_button_broadcasting_anim:I
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
goto :goto_1c
:pswitch_data_30
.packed-switch 0x1
:pswitch_15
:pswitch_1d
.end packed-switch
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/controls/GButtonControl;->_button:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method