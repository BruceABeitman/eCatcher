.class Lco/vine/android/RecipientPickerActivity$5;
.super Ljava/lang/Object;
.source "RecipientPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecipientPickerActivity;->addSendIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;


# direct methods
.method constructor <init>(Lco/vine/android/RecipientPickerActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$5;->this$0:Lco/vine/android/RecipientPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$5;->this$0:Lco/vine/android/RecipientPickerActivity;

    invoke-virtual {v0}, Lco/vine/android/RecipientPickerActivity;->onSendButtonClicked()V

    return-void
.end method
