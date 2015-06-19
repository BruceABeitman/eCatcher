.class Lcom/facebook/katana/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/SettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/SettingsActivity;

.field private final synthetic val$timeouts:[Ljava/lang/CharSequence;

.field private final synthetic val$values:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/SettingsActivity$1;->this$0:Lcom/facebook/katana/SettingsActivity;

    iput-object p2, p0, Lcom/facebook/katana/SettingsActivity$1;->val$values:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/facebook/katana/SettingsActivity$1;->val$timeouts:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$1;->this$0:Lcom/facebook/katana/SettingsActivity;

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$1;->val$values:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/facebook/katana/SettingsActivity$1;->val$timeouts:[Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/String;

    #calls: Lcom/facebook/katana/SettingsActivity;->valueToString([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, p2}, Lcom/facebook/katana/SettingsActivity;->access$0(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
