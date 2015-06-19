.class  Lco/vine/android/widget/ColorPicker$1;
.super Ljava/lang/Object;
.source "ColorPicker.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/widget/ColorPicker;
.field final synthetic val$circle:Lco/vine/android/widget/ColorPickerCircle;
.field final synthetic val$index:I
.method constructor <init>(Lco/vine/android/widget/ColorPicker;Lco/vine/android/widget/ColorPickerCircle;I)V
.registers 4
iput-object p1, p0, Lco/vine/android/widget/ColorPicker$1;->this$0:Lco/vine/android/widget/ColorPicker;
iput-object p2, p0, Lco/vine/android/widget/ColorPicker$1;->val$circle:Lco/vine/android/widget/ColorPickerCircle;
iput p3, p0, Lco/vine/android/widget/ColorPicker$1;->val$index:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/ColorPicker$1;->val$circle:Lco/vine/android/widget/ColorPickerCircle;
iget v1, p0, Lco/vine/android/widget/ColorPicker$1;->val$index:I
invoke-virtual {v0, v1}, Lco/vine/android/widget/ColorPickerCircle;->setIndex(I)V
return-void
.end method