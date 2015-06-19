.class public final Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Lcom/spotify/mobile/android/util/cw;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/Integer;
.field private l:Ljava/lang/Integer;
.field private m:Ljava/lang/Integer;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
const-string v0, "?"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
const-string v1, "Base uri should not contain a question mark (?)."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(ZLjava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a:Ljava/lang/String;
return-void
.end method
.method private b(Lcom/spotify/mobile/android/util/cw;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->c()Lcom/spotify/mobile/android/util/cw;
move-result-object v1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->f()Z
move-result v0
if-eqz v0, :cond_3f
const-string v0, " DESC"
:goto_1d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz v1, :cond_42
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, ","
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b(Lcom/spotify/mobile/android/util/cw;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_36
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_3f
const-string v0, ""
goto :goto_1d
:cond_42
const-string v0, ""
goto :goto_36
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
const/16 v0, 0x2ee
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->m:Ljava/lang/Integer;
return-object p0
.end method
.method public final a(II)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 4
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->k:Ljava/lang/Integer;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->l:Ljava/lang/Integer;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->i:Lcom/spotify/mobile/android/util/cw;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a:Ljava/lang/String;
const-string v1, "<username>"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
const-string v1, "Base uri does not contain the username placeholder."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b:Ljava/lang/String;
return-object p0
.end method
.method public final a(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->f:Z
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->e:Ljava/lang/String;
return-object p0
.end method
.method public final b(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->g:Z
return-object p0
.end method
.method public final b()Ljava/lang/String;
.registers 8
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_19
const-string v1, "<username>"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:cond_19
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2d
const-string v1, "<b62-album-id>"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->c:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:cond_2d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->d:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_41
const-string v1, "<b62-artist-id>"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->d:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:cond_41
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?sort="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->i:Lcom/spotify/mobile/android/util/cw;
if-eqz v1, :cond_6f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->i:Lcom/spotify/mobile/android/util/cw;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->b(Lcom/spotify/mobile/android/util/cw;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_6f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->j:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a5
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->i:Lcom/spotify/mobile/android/util/cw;
if-eqz v1, :cond_8e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_8e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->j:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_a5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&filter="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->e:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_d4
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%stext contains %s"
new-array v3, v6, [Ljava/lang/Object;
aput-object v0, v3, v4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v5
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_d4
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->f:Z
if-eqz v1, :cond_106
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->e:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_f3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_f3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "availableOffline eq true"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_106
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->g:Z
if-eqz v1, :cond_13c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->e:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_116
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->f:Z
if-eqz v1, :cond_129
:cond_116
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_129
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "complete eq true"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_13c
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->h:Z
if-eqz v1, :cond_153
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&group"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_153
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->k:Ljava/lang/Integer;
if-eqz v1, :cond_16c
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%s&decorate&decorateStart=%d&decorateLength=%d"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->k:Ljava/lang/Integer;
aput-object v0, v3, v5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->l:Ljava/lang/Integer;
aput-object v0, v3, v6
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_16c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->m:Ljava/lang/Integer;
if-eqz v1, :cond_180
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%s&updateThrottling=%d"
new-array v3, v6, [Ljava/lang/Object;
aput-object v0, v3, v4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->m:Ljava/lang/Integer;
aput-object v0, v3, v5
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_180
return-object v0
.end method
.method public final c(Z)Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/c;->h:Z
return-object p0
.end method