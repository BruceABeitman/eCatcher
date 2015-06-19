.class Lco/vine/android/SignUpNameAvatarFragment$2;
.super Ljava/lang/Object;
.source "SignUpNameAvatarFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/SignUpNameAvatarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpNameAvatarFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SignUpNameAvatarFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpNameAvatarFragment$2;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lco/vine/android/SignUpNameAvatarFragment$2;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    iget-object v1, p0, Lco/vine/android/SignUpNameAvatarFragment$2;->this$0:Lco/vine/android/SignUpNameAvatarFragment;

    #getter for: Lco/vine/android/SignUpNameAvatarFragment;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lco/vine/android/SignUpNameAvatarFragment;->access$200(Lco/vine/android/SignUpNameAvatarFragment;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lco/vine/android/SignUpNameAvatarFragment;->onEditorActionClicked(ILandroid/view/View;)Z
    invoke-static {v0, p2, v1}, Lco/vine/android/SignUpNameAvatarFragment;->access$100(Lco/vine/android/SignUpNameAvatarFragment;ILandroid/view/View;)Z

    move-result v0

    return v0
.end method
