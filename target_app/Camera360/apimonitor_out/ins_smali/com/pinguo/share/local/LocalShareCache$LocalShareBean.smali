.class public Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;
.super Ljava/lang/Object;
.source "LocalShareCache.java"
.field private isAudioPic:Z
.field private srcPath:Ljava/lang/String;
.field private tempName:Ljava/lang/String;
.field private url:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->srcPath:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->tempName:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->url:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->isAudioPic:Z
iput-object p1, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->srcPath:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->tempName:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->url:Ljava/lang/String;
iput-boolean p4, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->isAudioPic:Z
return-void
.end method
.method public getSrcPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->srcPath:Ljava/lang/String;
return-object v0
.end method
.method public getTempName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->tempName:Ljava/lang/String;
return-object v0
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->url:Ljava/lang/String;
return-object v0
.end method
.method public isAudioPic()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->isAudioPic:Z
return v0
.end method
.method public setUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->url:Ljava/lang/String;
return-void
.end method