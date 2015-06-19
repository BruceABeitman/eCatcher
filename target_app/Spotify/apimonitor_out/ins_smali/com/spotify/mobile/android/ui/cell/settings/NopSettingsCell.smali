.class public Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300c7
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
return-object v0
.end method
.method protected final a(Landroid/content/ContentValues;)V
.registers 2
return-void
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 2
return-void
.end method