.class public Lcom/spotify/mobile/android/service/ConnectDevice;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public static final a:[Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.field private l:Z
.field private m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.field private n:J
.field private o:Z
.field private p:Z
.field private q:Ljava/lang/String;
.field private r:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x11
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "is_active"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "is_self"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "is_connecting"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_enabled"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_volume_capable"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_zeroconf"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_dial"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "device_hash"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "secondary_device_hash"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_being_activated"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "type"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "became_active_at"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "is_license_compatible"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "attach_id"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "is_attached"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice;->a:[Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/ConnectDevice$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/service/ConnectDevice;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->c:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_90
move v0, v1
:goto_1e
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->e:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_92
move v0, v1
:goto_27
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_94
move v0, v1
:goto_30
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_96
move v0, v1
:goto_39
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->h:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_98
move v0, v1
:goto_42
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->i:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_9a
move v0, v1
:goto_4b
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_9c
move v0, v1
:goto_54
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->k:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_9e
move v0, v1
:goto_5d
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->l:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_a0
const/4 v0, 0x0
:goto_67
iput-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->n:J
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_a7
move v0, v1
:goto_76
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->o:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_a9
move v0, v1
:goto_7f
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->p:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->q:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_ab
:goto_8d
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->r:Z
return-void
:cond_90
move v0, v2
goto :goto_1e
:cond_92
move v0, v2
goto :goto_27
:cond_94
move v0, v2
goto :goto_30
:cond_96
move v0, v2
goto :goto_39
:cond_98
move v0, v2
goto :goto_42
:cond_9a
move v0, v2
goto :goto_4b
:cond_9c
move v0, v2
goto :goto_54
:cond_9e
move v0, v2
goto :goto_5d
:cond_a0
invoke-static {}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->values()[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
move-result-object v3
aget-object v0, v3, v0
goto :goto_67
:cond_a7
move v0, v2
goto :goto_76
:cond_a9
move v0, v2
goto :goto_7f
:cond_ab
move v1, v2
goto :goto_8d
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/ConnectDevice;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public static a(Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/service/ConnectDevice;
.registers 7
new-instance v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;-><init>()V
const/16 v1, 0x9
const-string v2, ""
invoke-static {p0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
const/16 v1, 0xa
const-string v2, ""
invoke-static {p0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->c:Ljava/lang/String;
const/4 v1, 0x1
const v2, 0x7f0f0159
invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->d:Ljava/lang/String;
const/4 v1, 0x2
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->e:Z
const/4 v1, 0x3
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
const/4 v1, 0x5
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
const/4 v1, 0x4
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->h:Z
const/4 v1, 0x6
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->i:Z
const/4 v1, 0x7
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
const/16 v1, 0x8
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->k:Z
const/16 v1, 0xb
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->l:Z
const/16 v1, 0xc
invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
invoke-static {}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->values()[Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
move-result-object v2
if-ltz v1, :cond_9d
array-length v3, v2
if-ge v1, v3, :cond_9d
aget-object v1, v2, v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
:goto_74
const/16 v1, 0xd
invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
iput-wide v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->n:J
const/16 v1, 0xe
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->p:Z
const/16 v1, 0xf
const-string v2, ""
invoke-static {p0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->q:Ljava/lang/String;
const/16 v1, 0x10
invoke-static {p0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->r:Z
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/service/ConnectDevice;->a(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->o:Z
return-object v0
:cond_9d
sget-object v1, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->a:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
iput-object v1, v0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
goto :goto_74
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/content/Context;Lcom/spotify/android/paste/widget/ListItemView;)V
.registers 5
invoke-virtual {p2, p0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->d:Ljava/lang/String;
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->e:Z
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;
move-result-object v1
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
if-nez v0, :cond_26
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->h:Z
if-nez v0, :cond_26
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
if-nez v0, :cond_26
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
if-nez v0, :cond_39
:cond_26
const/4 v0, 0x0
:goto_27
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
if-eqz v0, :cond_3c
const v0, 0x7f0f0156
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
:cond_38
:goto_38
return-void
:cond_39
const/16 v0, 0x8
goto :goto_27
:cond_3c
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->p:Z
if-nez v0, :cond_4b
const v0, 0x7f0f0157
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
goto :goto_38
:cond_4b
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
if-nez v0, :cond_5a
const v0, 0x7f0f0158
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
goto :goto_38
:cond_5a
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
if-eqz v0, :cond_69
const v0, 0x7f0f015a
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
goto :goto_38
:cond_69
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->h:Z
if-eqz v0, :cond_38
const v0, 0x7f0f0155
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
goto :goto_38
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
if-eqz p1, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->c:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->d:Ljava/lang/String;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->e:Z
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/spotify/mobile/android/service/ConnectDevice;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
check-cast p1, Lcom/spotify/mobile/android/service/ConnectDevice;
iget-object v1, p1, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
return v0
.end method
.method public final g()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->i:Z
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->k:Z
return v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
return v0
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->l:Z
return v0
.end method
.method public final k()Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
return-object v0
.end method
.method public final l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->q:Ljava/lang/String;
return-object v0
.end method
.method public final m()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->r:Z
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->e:Z
if-eqz v0, :cond_7b
move v0, v1
:goto_16
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->f:Z
if-eqz v0, :cond_7d
move v0, v1
:goto_1e
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->g:Z
if-eqz v0, :cond_7f
move v0, v1
:goto_26
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->h:Z
if-eqz v0, :cond_81
move v0, v1
:goto_2e
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->i:Z
if-eqz v0, :cond_83
move v0, v1
:goto_36
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->j:Z
if-eqz v0, :cond_85
move v0, v1
:goto_3e
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->k:Z
if-eqz v0, :cond_87
move v0, v1
:goto_46
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->l:Z
if-eqz v0, :cond_89
move v0, v1
:goto_4e
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
if-nez v0, :cond_8b
const/4 v0, -0x1
:goto_56
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->n:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->o:Z
if-eqz v0, :cond_92
move v0, v1
:goto_63
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->p:Z
if-eqz v0, :cond_94
move v0, v1
:goto_6b
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->q:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->r:Z
if-eqz v0, :cond_96
:goto_77
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V
return-void
:cond_7b
move v0, v2
goto :goto_16
:cond_7d
move v0, v2
goto :goto_1e
:cond_7f
move v0, v2
goto :goto_26
:cond_81
move v0, v2
goto :goto_2e
:cond_83
move v0, v2
goto :goto_36
:cond_85
move v0, v2
goto :goto_3e
:cond_87
move v0, v2
goto :goto_46
:cond_89
move v0, v2
goto :goto_4e
:cond_8b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectDevice;->m:Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->ordinal()I
move-result v0
goto :goto_56
:cond_92
move v0, v2
goto :goto_63
:cond_94
move v0, v2
goto :goto_6b
:cond_96
move v1, v2
goto :goto_77
.end method