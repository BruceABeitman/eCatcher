.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/cell/settings/a;
.field  a:[I
.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_e
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;->a:[I
return-void
:array_e
.array-data 0x4
0x0t 0x77t 0x1t 0x0t
0x0t 0x71t 0x2t 0x0t
0x0t 0xe2t 0x4t 0x0t
.end array-data
.end method
.method public final a(I)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;->a:[I
aget v0, v0, p1
return v0
.end method
.method public final b(I)I
.registers 4
const/4 v0, 0x0
const v1, 0x17700
if-gt p1, v1, :cond_7
:goto_6
:cond_6
return v0
:cond_7
const v1, 0x27100
if-gt p1, v1, :cond_e
const/4 v0, 0x1
goto :goto_6
:cond_e
const v1, 0x4e200
if-gt p1, v1, :cond_6
const/4 v0, 0x2
goto :goto_6
.end method