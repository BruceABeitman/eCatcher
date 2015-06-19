.class Lco/vine/android/DebugHomeActivity$3;
.super Ljava/lang/Object;
.source "DebugHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/DebugHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/DebugHomeActivity;

.field final synthetic val$query:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lco/vine/android/DebugHomeActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/DebugHomeActivity$3;->this$0:Lco/vine/android/DebugHomeActivity;

    iput-object p2, p0, Lco/vine/android/DebugHomeActivity$3;->val$query:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/DebugHomeActivity$3;->this$0:Lco/vine/android/DebugHomeActivity;

    iget-object v1, p0, Lco/vine/android/DebugHomeActivity$3;->val$query:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lco/vine/android/DebugHomeActivity;->handleDebugQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lco/vine/android/DebugHomeActivity;->access$000(Lco/vine/android/DebugHomeActivity;Ljava/lang/String;)V

    return-void
.end method
