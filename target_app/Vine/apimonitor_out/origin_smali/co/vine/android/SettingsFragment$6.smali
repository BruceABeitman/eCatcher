.class Lco/vine/android/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SettingsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;

    iget-object v1, p0, Lco/vine/android/SettingsFragment$6;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mSpinnerAdapter:Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1300(Lco/vine/android/SettingsFragment;)Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->getEditionCode(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$1202(Lco/vine/android/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
