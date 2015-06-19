.class Lco/vine/android/widget/ColorPicker$1;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/ColorPicker;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/ColorPicker;

.field final synthetic val$circle:Lco/vine/android/widget/ColorPickerCircle;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lco/vine/android/widget/ColorPicker;Lco/vine/android/widget/ColorPickerCircle;I)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/widget/ColorPicker$1;->this$0:Lco/vine/android/widget/ColorPicker;

    iput-object p2, p0, Lco/vine/android/widget/ColorPicker$1;->val$circle:Lco/vine/android/widget/ColorPickerCircle;

    iput p3, p0, Lco/vine/android/widget/ColorPicker$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/ColorPicker$1;->val$circle:Lco/vine/android/widget/ColorPickerCircle;

    iget v1, p0, Lco/vine/android/widget/ColorPicker$1;->val$index:I

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ColorPickerCircle;->setIndex(I)V

    return-void
.end method
