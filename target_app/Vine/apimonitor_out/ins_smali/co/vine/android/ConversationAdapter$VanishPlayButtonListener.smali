.class public Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field private final holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.method public constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V
.registers 3
iput-object p1, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->this$0:Lco/vine/android/ConversationAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationAdapter$VanishPlayButtonListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v1, 0x8
const/4 v3, 0x0
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timerOval:Lco/vine/android/drawable/ColoredOvalDrawable;
const/high16 v1, -0x100
iget-object v2, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget v2, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I
or-int/2addr v1, v2
invoke-virtual {v0, v1}, Lco/vine/android/drawable/ColoredOvalDrawable;->setColor(I)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v0, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->this$0:Lco/vine/android/ConversationAdapter;
iget-object v1, p0, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;->holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I
invoke-virtual {v0, v1}, Lco/vine/android/ConversationAdapter;->play(I)V
const-string v1, " - Lco/vine/android/ConversationAdapter$VanishPlayButtonListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method