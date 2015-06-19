.class public Lcom/spotify/mobile/android/util/ProcessIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/ProcessIdentifier;
const-class v1, Lcom/spotify/mobile/android/util/ch;
new-instance v2, Lcom/spotify/mobile/android/util/ch;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/ch;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
.registers 4
:try_start_0
invoke-static {}, Lcom/spotify/mobile/android/util/ProcessIdentifier;->b()Ljava/lang/String;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_f
move-result-object v0
const-string v1, "robolectric.ui"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_16
sget-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->c:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
:goto_e
return-object v0
:catch_f
move-exception v0
new-instance v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$UnidentifiableProcessException;
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/ProcessIdentifier$UnidentifiableProcessException;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_16
const-string v1, ".service"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_21
sget-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->b:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
goto :goto_e
:cond_21
const-string v1, ".gdbprocess"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_2c
sget-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->d:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
goto :goto_e
:cond_2c
const-string v1, "com.spotify.music"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_37
sget-object v0, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
goto :goto_e
:cond_37
new-instance v1, Lcom/spotify/mobile/android/util/ProcessIdentifier$UnidentifiableProcessException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "We don\'t know what this process is: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/ProcessIdentifier$UnidentifiableProcessException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static b()Ljava/lang/String;
.registers 3
const/4 v1, 0x0
:try_start_1
const-class v0, Lcom/spotify/mobile/android/util/ProcessIdentifier;
const-class v2, Lcom/spotify/mobile/android/util/ch;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {}, Lcom/spotify/mobile/android/util/ch;->a()Ljava/io/Reader;
move-result-object v1
new-instance v0, Ljava/lang/StringBuilder;
const/16 v2, 0x40
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V
:goto_13
invoke-virtual {v1}, Ljava/io/Reader;->read()I
move-result v2
if-lez v2, :cond_25
int-to-char v2, v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_1e
goto :goto_13
:catchall_1e
move-exception v0
if-eqz v1, :cond_24
invoke-virtual {v1}, Ljava/io/Reader;->close()V
:cond_24
throw v0
:cond_25
:try_start_25
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_28
.catchall {:try_start_25 .. :try_end_28} :catchall_1e
move-result-object v0
invoke-virtual {v1}, Ljava/io/Reader;->close()V
return-object v0
.end method