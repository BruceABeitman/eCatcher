.class public abstract Ld/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/e;
.field private static final a:J = 0x1L
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ld/a/d/a;
.field private f:Ljava/util/Map;
.field private g:Z
.field private transient h:Ld/a/f;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/b;->b:Ljava/lang/String;
iput-object p2, p0, Ld/a/b;->c:Ljava/lang/String;
iput-object p3, p0, Ld/a/b;->d:Ljava/lang/String;
new-instance v0, Ld/a/d/a;
invoke-direct {v0}, Ld/a/d/a;-><init>()V
iput-object v0, p0, Ld/a/b;->e:Ld/a/d/a;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Ld/a/b;->f:Ljava/util/Map;
return-void
.end method
.method public a()Ld/a/d/a;
.registers 2
iget-object v0, p0, Ld/a/b;->e:Ld/a/d/a;
return-object v0
.end method
.method protected abstract a(Ljava/lang/String;)Ld/a/d/b;
.end method
.method protected abstract a(Ld/a/d/b;)Ld/a/d/c;
.end method
.method public varargs declared-synchronized a(Ld/a/d;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.registers 8
monitor-enter p0
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_3
invoke-interface {p1, v0, v1}, Ld/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ld/a/d/a;
invoke-direct {v0}, Ld/a/d/a;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, p3, v1}, Ld/a/d/a;->a([Ljava/lang/String;Z)V
const-string v1, "oauth_callback"
const/4 v2, 0x1
invoke-virtual {v0, v1, p2, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
iget-object v1, p0, Ld/a/b;->b:Ljava/lang/String;
invoke-virtual {p0, p1, v1, v0}, Ld/a/b;->a(Ld/a/d;Ljava/lang/String;Ld/a/d/a;)V
iget-object v0, p0, Ld/a/b;->e:Ld/a/d/a;
const-string v1, "oauth_callback_confirmed"
invoke-virtual {v0, v1}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Ld/a/b;->e:Ld/a/d/a;
const-string v2, "oauth_callback_confirmed"
invoke-virtual {v1, v2}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Ld/a/b;->g:Z
iget-boolean v0, p0, Ld/a/b;->g:Z
if-eqz v0, :cond_50
iget-object v0, p0, Ld/a/b;->d:Ljava/lang/String;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "oauth_token"
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-interface {p1}, Ld/a/d;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
:try_end_4d
.catchall {:try_start_3 .. :try_end_4d} :catchall_6e
move-result-object v0
:goto_4e
monitor-exit p0
return-object v0
:try_start_50
:cond_50
iget-object v0, p0, Ld/a/b;->d:Ljava/lang/String;
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "oauth_token"
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-interface {p1}, Ld/a/d;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "oauth_callback"
aput-object v3, v1, v2
const/4 v2, 0x3
aput-object p2, v1, v2
invoke-static {v0, v1}, Ld/a/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
:try_end_6c
.catchall {:try_start_50 .. :try_end_6c} :catchall_6e
move-result-object v0
goto :goto_4e
:catchall_6e
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected a(ILd/a/d/c;)V
.registers 7
if-nez p2, :cond_3
return-void
:cond_3
new-instance v1, Ljava/io/BufferedReader;
new-instance v0, Ljava/io/InputStreamReader;
invoke-interface {p2}, Ld/a/d/c;->a()Ljava/io/InputStream;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
:goto_1a
if-eqz v0, :cond_24
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
goto :goto_1a
:cond_24
packed-switch p1, :pswitch_data_62
new-instance v0, Ld/a/c/a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Service provider responded in error: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " ("
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p2}, Ld/a/d/c;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ld/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:pswitch_58
new-instance v0, Ld/a/c/e;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ld/a/c/e;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_62
.packed-switch 0x191
:pswitch_58
.end packed-switch
.end method
.method public a(Ld/a/d/a;)V
.registers 2
iput-object p1, p0, Ld/a/b;->e:Ld/a/d/a;
return-void
.end method
.method protected a(Ld/a/d/b;Ld/a/d/c;)V
.registers 3
return-void
.end method
.method protected a(Ld/a/d;Ljava/lang/String;Ld/a/d/a;)V
.registers 10
const/4 v2, 0x0
invoke-virtual {p0}, Ld/a/b;->f()Ljava/util/Map;
move-result-object v4
invoke-interface {p1}, Ld/a/d;->d()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-interface {p1}, Ld/a/d;->e()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_19
:cond_11
new-instance v0, Ld/a/c/c;
const-string v1, "Consumer key or secret not set"
invoke-direct {v0, v1}, Ld/a/c/c;-><init>(Ljava/lang/String;)V
throw v0
:try_start_19
:cond_19
invoke-virtual {p0, p2}, Ld/a/b;->a(Ljava/lang/String;)Ld/a/d/b;
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_e1
.catch Ld/a/c/e; {:try_start_19 .. :try_end_1c} :catch_f4
.catch Ld/a/c/c; {:try_start_19 .. :try_end_1c} :catch_ca
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_d1
move-result-object v3
:try_start_1d
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_25
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v3, v0, v1}, Ld/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catchall {:try_start_1d .. :try_end_3a} :catchall_e6
.catch Ld/a/c/e; {:try_start_1d .. :try_end_3a} :catch_3b
.catch Ld/a/c/c; {:try_start_1d .. :try_end_3a} :catch_ef
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_ea
goto :goto_25
:catch_3b
move-exception v0
move-object v1, v2
move-object v2, v3
:try_start_3e
:goto_3e
throw v0
:try_end_3f
.catchall {:try_start_3e .. :try_end_3f} :catchall_3f
:catchall_3f
move-exception v0
move-object v3, v2
:goto_41
:try_start_41
invoke-virtual {p0, v3, v1}, Ld/a/b;->a(Ld/a/d/b;Ld/a/d/c;)V
:try_end_44
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_da
throw v0
:cond_45
if-eqz p3, :cond_50
:try_start_47
invoke-virtual {p3}, Ld/a/d/a;->isEmpty()Z
move-result v0
if-nez v0, :cond_50
invoke-interface {p1, p3}, Ld/a/d;->a(Ld/a/d/a;)V
:cond_50
iget-object v0, p0, Ld/a/b;->h:Ld/a/f;
if-eqz v0, :cond_59
iget-object v0, p0, Ld/a/b;->h:Ld/a/f;
invoke-interface {v0, v3}, Ld/a/f;->a(Ld/a/d/b;)V
:cond_59
invoke-interface {p1, v3}, Ld/a/d;->a(Ld/a/d/b;)Ld/a/d/b;
iget-object v0, p0, Ld/a/b;->h:Ld/a/f;
if-eqz v0, :cond_65
iget-object v0, p0, Ld/a/b;->h:Ld/a/f;
invoke-interface {v0, v3}, Ld/a/f;->b(Ld/a/d/b;)V
:cond_65
invoke-virtual {p0, v3}, Ld/a/b;->a(Ld/a/d/b;)Ld/a/d/c;
:try_end_68
.catchall {:try_start_47 .. :try_end_68} :catchall_e6
.catch Ld/a/c/e; {:try_start_47 .. :try_end_68} :catch_3b
.catch Ld/a/c/c; {:try_start_47 .. :try_end_68} :catch_ef
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_68} :catch_ea
move-result-object v1
:try_start_69
invoke-interface {v1}, Ld/a/d/c;->b()I
move-result v2
const/4 v0, 0x0
iget-object v4, p0, Ld/a/b;->h:Ld/a/f;
if-eqz v4, :cond_78
iget-object v0, p0, Ld/a/b;->h:Ld/a/f;
invoke-interface {v0, v3, v1}, Ld/a/f;->a(Ld/a/d/b;Ld/a/d/c;)Z
:try_end_77
.catchall {:try_start_69 .. :try_end_77} :catchall_ce
.catch Ld/a/c/e; {:try_start_69 .. :try_end_77} :catch_b9
.catch Ld/a/c/c; {:try_start_69 .. :try_end_77} :catch_f2
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_77} :catch_ed
move-result v0
:cond_78
if-eqz v0, :cond_85
:try_start_7a
invoke-virtual {p0, v3, v1}, Ld/a/b;->a(Ld/a/d/b;Ld/a/d/c;)V
:try_end_7d
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e
:goto_7d
return-void
:catch_7e
move-exception v0
new-instance v1, Ld/a/c/a;
invoke-direct {v1, v0}, Ld/a/c/a;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_85
const/16 v0, 0x12c
if-lt v2, v0, :cond_8c
:try_start_89
invoke-virtual {p0, v2, v1}, Ld/a/b;->a(ILd/a/d/c;)V
:cond_8c
invoke-interface {v1}, Ld/a/d/c;->a()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Ld/a/c;->a(Ljava/io/InputStream;)Ld/a/d/a;
move-result-object v0
const-string v2, "oauth_token"
invoke-virtual {v0, v2}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
const-string v4, "oauth_token_secret"
invoke-virtual {v0, v4}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
const-string v5, "oauth_token"
invoke-virtual {v0, v5}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
const-string v5, "oauth_token_secret"
invoke-virtual {v0, v5}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
invoke-virtual {p0, v0}, Ld/a/b;->a(Ld/a/d/a;)V
if-eqz v2, :cond_b1
if-nez v4, :cond_bc
:cond_b1
new-instance v0, Ld/a/c/c;
const-string v2, "Request token or token secret not set in server reply. The service provider you use is probably buggy."
invoke-direct {v0, v2}, Ld/a/c/c;-><init>(Ljava/lang/String;)V
throw v0
:catch_b9
move-exception v0
move-object v2, v3
goto :goto_3e
:cond_bc
invoke-interface {p1, v2, v4}, Ld/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_bf
.catchall {:try_start_89 .. :try_end_bf} :catchall_ce
.catch Ld/a/c/e; {:try_start_89 .. :try_end_bf} :catch_b9
.catch Ld/a/c/c; {:try_start_89 .. :try_end_bf} :catch_f2
.catch Ljava/lang/Exception; {:try_start_89 .. :try_end_bf} :catch_ed
:try_start_bf
invoke-virtual {p0, v3, v1}, Ld/a/b;->a(Ld/a/d/b;Ld/a/d/c;)V
:try_end_c2
.catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3
goto :goto_7d
:catch_c3
move-exception v0
new-instance v1, Ld/a/c/a;
invoke-direct {v1, v0}, Ld/a/c/a;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_ca
move-exception v0
move-object v1, v2
move-object v3, v2
:goto_cd
:try_start_cd
throw v0
:catchall_ce
move-exception v0
goto/16 :goto_41
:catch_d1
move-exception v0
move-object v1, v2
move-object v3, v2
:goto_d4
new-instance v2, Ld/a/c/a;
invoke-direct {v2, v0}, Ld/a/c/a;-><init>(Ljava/lang/Exception;)V
throw v2
:try_end_da
.catchall {:try_start_cd .. :try_end_da} :catchall_ce
:catch_da
move-exception v0
new-instance v1, Ld/a/c/a;
invoke-direct {v1, v0}, Ld/a/c/a;-><init>(Ljava/lang/Exception;)V
throw v1
:catchall_e1
move-exception v0
move-object v1, v2
move-object v3, v2
goto/16 :goto_41
:catchall_e6
move-exception v0
move-object v1, v2
goto/16 :goto_41
:catch_ea
move-exception v0
move-object v1, v2
goto :goto_d4
:catch_ed
move-exception v0
goto :goto_d4
:catch_ef
move-exception v0
move-object v1, v2
goto :goto_cd
:catch_f2
move-exception v0
goto :goto_cd
:catch_f4
move-exception v0
move-object v1, v2
goto/16 :goto_3e
.end method
.method public a(Ld/a/f;)V
.registers 2
iput-object p1, p0, Ld/a/b;->h:Ld/a/f;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ld/a/b;->f:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Ld/a/b;->g:Z
return-void
.end method
.method protected b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Ld/a/b;->e:Ld/a/d/a;
invoke-virtual {v0, p1}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public varargs declared-synchronized b(Ld/a/d;Ljava/lang/String;[Ljava/lang/String;)V
.registers 7
monitor-enter p0
:try_start_1
invoke-interface {p1}, Ld/a/d;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d
invoke-interface {p1}, Ld/a/d;->c()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_18
:cond_d
new-instance v0, Ld/a/c/c;
const-string v1, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"
invoke-direct {v0, v1}, Ld/a/c/c;-><init>(Ljava/lang/String;)V
throw v0
:catchall_15
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_15
move-exception v0
monitor-exit p0
throw v0
:cond_18
:try_start_18
new-instance v0, Ld/a/d/a;
invoke-direct {v0}, Ld/a/d/a;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, p3, v1}, Ld/a/d/a;->a([Ljava/lang/String;Z)V
iget-boolean v1, p0, Ld/a/b;->g:Z
if-eqz v1, :cond_2d
if-eqz p2, :cond_2d
const-string v1, "oauth_verifier"
const/4 v2, 0x1
invoke-virtual {v0, v1, p2, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
:cond_2d
iget-object v1, p0, Ld/a/b;->c:Ljava/lang/String;
invoke-virtual {p0, p1, v1, v0}, Ld/a/b;->a(Ld/a/d;Ljava/lang/String;Ld/a/d/a;)V
:try_end_32
.catchall {:try_start_18 .. :try_end_32} :catchall_15
monitor-exit p0
return-void
.end method
.method public b(Ld/a/f;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Ld/a/b;->h:Ld/a/f;
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Ld/a/b;->g:Z
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/util/Map;
.registers 2
iget-object v0, p0, Ld/a/b;->f:Ljava/util/Map;
return-object v0
.end method