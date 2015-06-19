.class public final Lcom/spotify/bouncer/proto/Metadata$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"
.field public reactions:Lcom/spotify/bouncer/proto/SocialReaction;
.field public reshare_id:Ljava/lang/String;
.field public summary:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/spotify/bouncer/proto/Metadata;)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V
if-nez p1, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata;->summary:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->summary:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata;->reshare_id:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->reshare_id:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/bouncer/proto/Metadata;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;
iput-object v0, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;
goto :goto_5
.end method
.method public final build()Lcom/spotify/bouncer/proto/Metadata;
.registers 3
new-instance v0, Lcom/spotify/bouncer/proto/Metadata;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/bouncer/proto/Metadata;-><init>(Lcom/spotify/bouncer/proto/Metadata$Builder;B)V
return-object v0
.end method
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
.registers 2
invoke-virtual {p0}, Lcom/spotify/bouncer/proto/Metadata$Builder;->build()Lcom/spotify/bouncer/proto/Metadata;
move-result-object v0
return-object v0
.end method
.method public final reactions(Lcom/spotify/bouncer/proto/SocialReaction;)Lcom/spotify/bouncer/proto/Metadata$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->reactions:Lcom/spotify/bouncer/proto/SocialReaction;
return-object p0
.end method
.method public final reshare_id(Ljava/lang/String;)Lcom/spotify/bouncer/proto/Metadata$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->reshare_id:Ljava/lang/String;
return-object p0
.end method
.method public final summary(Ljava/lang/String;)Lcom/spotify/bouncer/proto/Metadata$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/Metadata$Builder;->summary:Ljava/lang/String;
return-object p0
.end method