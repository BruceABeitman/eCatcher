.class final synthetic Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->values()[Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77
:try_start_1f
:goto_1f
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73
invoke-static {}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->values()[Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
:try_start_3e
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->b:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-virtual {v1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_71
:try_start_49
:goto_49
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->c:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-virtual {v1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->d:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-virtual {v1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d
:try_start_5f
:goto_5f
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->e:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
invoke-virtual {v1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_6a
:try_end_6a
.catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b
return-void
:catch_6b
move-exception v0
goto :goto_6a
:catch_6d
move-exception v0
goto :goto_5f
:catch_6f
move-exception v0
goto :goto_54
:catch_71
move-exception v0
goto :goto_49
:catch_73
move-exception v0
goto :goto_35
:catch_75
move-exception v0
goto :goto_2a
:catch_77
move-exception v0
goto :goto_1f
:catch_79
move-exception v0
goto :goto_14
.end method