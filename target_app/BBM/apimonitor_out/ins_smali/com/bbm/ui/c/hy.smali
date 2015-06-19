.class final Lcom/bbm/ui/c/hy;
.super Lcom/bbm/j/u;
.source "UpdatesFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hy;->a:Lcom/bbm/ui/c/hk;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
const-string v3, "adsEnabled"
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v3
const-string v4, "enablePostAdPrefetch"
invoke-virtual {v3, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v4
const-string v5, "postFrequency"
invoke-virtual {v4, v5}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v4
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v5
const-string v6, "lastRequestedAd"
invoke-virtual {v5, v6}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v5
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v6
invoke-virtual {v6}, Lcom/bbm/b/q;->a()Lcom/bbm/j/w;
move-result-object v6
iget-object v7, v3, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v7, v8, :cond_50
invoke-interface {v6}, Lcom/bbm/j/w;->b()Z
move-result v7
if-nez v7, :cond_50
iget-object v7, v4, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v7, v8, :cond_50
iget-object v7, v5, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v7, v8, :cond_50
iget-object v7, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v7, v8, :cond_52
:cond_50
move v0, v2
:goto_51
return v0
:cond_52
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v7
iget-object v7, v7, Lcom/bbm/d;->a:Lcom/bbm/b/q;
new-instance v8, Lcom/bbm/b/aa;
invoke-direct {v8}, Lcom/bbm/b/aa;-><init>()V
invoke-virtual {v7, v8}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v7, "value"
invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_6c
move v0, v1
goto :goto_51
:cond_6c
iget-object v0, v3, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_cc
invoke-interface {v6}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/util/List;)Lcom/bbm/b/a;
move-result-object v0
if-eqz v0, :cond_84
move v0, v1
goto :goto_51
:cond_84
const-string v0, "UpdatesFragment: Could not find an unrendered ad"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/c/hy;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0, v4, v5}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/bl;Lcom/bbm/util/bl;)Lcom/bbm/ui/c/id;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "UpdatesFragment: Tried to force an ad request with result="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-array v4, v2, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v3, Lcom/bbm/ui/c/hu;->a:[I
invoke-virtual {v0}, Lcom/bbm/ui/c/id;->ordinal()I
move-result v0
aget v0, v3, v0
packed-switch v0, :pswitch_data_f8
:goto_b0
move v0, v2
goto :goto_51
:pswitch_b2
move v0, v1
goto :goto_51
:pswitch_b4
invoke-static {}, Lcom/bbm/b/e;->a()V
const-string v0, "UpdatesFragment: Prefetched an ad since no unrendered ads"
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
goto :goto_51
:pswitch_c0
invoke-static {}, Lcom/bbm/b/e;->a()V
const-string v0, "UpdatesFragment: Prefetched an ad since no unrendered ads"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
goto :goto_51
:cond_cc
iget-object v0, p0, Lcom/bbm/ui/c/hy;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0, v4, v5}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/bl;Lcom/bbm/util/bl;)Lcom/bbm/ui/c/id;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "UpdatesFragment: Tried to force an ad with result="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-array v4, v2, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v3, Lcom/bbm/ui/c/hu;->a:[I
invoke-virtual {v0}, Lcom/bbm/ui/c/id;->ordinal()I
move-result v0
aget v0, v3, v0
packed-switch v0, :pswitch_data_102
goto :goto_b0
:pswitch_f2
move v0, v1
goto/16 :goto_51
:pswitch_f5
move v0, v2
goto/16 :goto_51
:pswitch_data_102
.packed-switch 0x1
:pswitch_f2
:pswitch_f2
:pswitch_f5
.end packed-switch
:pswitch_data_f8
.packed-switch 0x1
:pswitch_b2
:pswitch_b4
:pswitch_c0
.end packed-switch
.end method