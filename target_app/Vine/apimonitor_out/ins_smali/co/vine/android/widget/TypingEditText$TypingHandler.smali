.class  Lco/vine/android/widget/TypingEditText$TypingHandler;
.super Landroid/os/Handler;
.source "TypingEditText.java"
.field public static final TYPING:I = 0x1
.field final synthetic this$0:Lco/vine/android/widget/TypingEditText;
.method public constructor <init>(Lco/vine/android/widget/TypingEditText;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/TypingEditText$TypingHandler;->this$0:Lco/vine/android/widget/TypingEditText;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1a
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p0, Lco/vine/android/widget/TypingEditText$TypingHandler;->this$0:Lco/vine/android/widget/TypingEditText;
#getter for: Lco/vine/android/widget/TypingEditText;->mListener:Lco/vine/android/widget/TypingEditText$TypingListener;
invoke-static {v0}, Lco/vine/android/widget/TypingEditText;->access$300(Lco/vine/android/widget/TypingEditText;)Lco/vine/android/widget/TypingEditText$TypingListener;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lco/vine/android/widget/TypingEditText$TypingHandler;->this$0:Lco/vine/android/widget/TypingEditText;
#getter for: Lco/vine/android/widget/TypingEditText;->mListener:Lco/vine/android/widget/TypingEditText$TypingListener;
invoke-static {v0}, Lco/vine/android/widget/TypingEditText;->access$300(Lco/vine/android/widget/TypingEditText;)Lco/vine/android/widget/TypingEditText$TypingListener;
move-result-object v0
iget-object v1, p0, Lco/vine/android/widget/TypingEditText$TypingHandler;->this$0:Lco/vine/android/widget/TypingEditText;
invoke-interface {v0, v1}, Lco/vine/android/widget/TypingEditText$TypingListener;->onTypingTimeout(Landroid/view/View;)V
goto :goto_5
:pswitch_data_1a
.packed-switch 0x1
:pswitch_6
.end packed-switch
.end method