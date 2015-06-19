.class final Lcom/spotify/mobile/android/spotlets/search/loader/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final a:Ljava/lang/String;
.field public final b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
.field private final c:I
.field private final d:I
.field private final e:Z
.field private final f:Z
.field private g:Lcom/spotify/cosmos/router/Request;
.field private h:Ljava/lang/Integer;
.field private i:Ljava/lang/Long;
.method constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;IIZZ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
iput p3, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->c:I
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
const/4 p1, 0x0
:cond_e
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
iput p4, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->d:I
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->e:Z
iput-boolean p6, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->f:Z
return-void
.end method
.method final a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Lcom/spotify/cosmos/router/Request;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->g:Lcom/spotify/cosmos/router/Request;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->g:Lcom/spotify/cosmos/router/Request;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
if-nez v0, :cond_36
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
:goto_d
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
const-string v1, "country"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
const-string v1, "catalogue"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
const-string v1, "username"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->g:Lcom/spotify/cosmos/router/Request;
goto :goto_6
:cond_36
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
const-string v1, "hm"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "searchview"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "/android/v2"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->mString:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "username"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "country"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "catalogue"
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "limit"
iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->d:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "search-image-size"
iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->c:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "radio"
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->f:Z
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "mft"
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->e:Z
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_d
.end method
.method final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->i:Ljava/lang/Long;
if-eqz v0, :cond_22
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Request "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "was already started at "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->i:Ljava/lang/Long;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
:cond_22
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->i:Ljava/lang/Long;
return-void
.end method
.method final b()J
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->i:Ljava/lang/Long;
if-eqz v0, :cond_10
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->i:Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sub-long/2addr v0, v2
:goto_f
return-wide v0
:cond_10
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Request "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " was not started"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
const-wide/16 v0, 0x0
goto :goto_f
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-eq p0, p1, :cond_10
instance-of v0, p1, Lcom/spotify/mobile/android/spotlets/search/loader/e;
if-eqz v0, :cond_12
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I
move-result v0
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
if-ne v0, v1, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->h:Ljava/lang/Integer;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
if-nez v0, :cond_16
const/4 v0, 0x0
:goto_9
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->h:Ljava/lang/Integer;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->h:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
:cond_16
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->d:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->e:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->f:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_9
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/e;->hashCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
const/4 v0, 0x0
return-object v0
.end method