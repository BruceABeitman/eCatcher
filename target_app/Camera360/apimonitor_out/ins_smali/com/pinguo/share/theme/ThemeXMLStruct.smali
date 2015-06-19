.class public Lcom/pinguo/share/theme/ThemeXMLStruct;
.super Ljava/lang/Object;
.source "ThemeXMLStruct.java"
.field private bDownloaded:Z
.field private bLocalInfo:Z
.field private bNeedUpdate:Z
.field private content:Ljava/lang/String;
.field private description:Ljava/lang/String;
.field private mButton:Lcom/pinguo/share/theme/ThemeButton;
.field private mImageView:Landroid/widget/ImageView;
.field private mTextView:Landroid/widget/TextView;
.field private nActivity:I
.field private nId:I
.field private push:Ljava/lang/String;
.field private strDefault:Ljava/lang/String;
.field private strPreviewName:Ljava/lang/String;
.field private strPriviewUrl:Ljava/lang/String;
.field private strSmall:Ljava/lang/String;
.field private strTag:Ljava/lang/String;
.field private strTemplate:Ljava/lang/String;
.field private strTitle:Ljava/lang/String;
.field private strUpdate:Ljava/lang/String;
.field private strUrlPrefix:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nId:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTitle:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUrlPrefix:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strSmall:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPreviewName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPriviewUrl:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nActivity:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTag:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strDefault:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUpdate:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTemplate:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->push:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->content:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->description:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bNeedUpdate:Z
iput-boolean v1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bLocalInfo:Z
iput-boolean v1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bDownloaded:Z
return-void
.end method
.method public disneedUpdate()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bNeedUpdate:Z
return-void
.end method
.method public enableThemeButton()V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mButton:Lcom/pinguo/share/theme/ThemeButton;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mButton:Lcom/pinguo/share/theme/ThemeButton;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/share/theme/ThemeButton;->setClickable(Z)V
:cond_a
return-void
.end method
.method public getActivity()I
.registers 2
iget v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nActivity:I
return v0
.end method
.method public getContent()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->content:Ljava/lang/String;
return-object v0
.end method
.method public getDefault()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strDefault:Ljava/lang/String;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->description:Ljava/lang/String;
return-object v0
.end method
.method public getDownloaded()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bDownloaded:Z
return v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nId:I
return v0
.end method
.method public getImageView()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mImageView:Landroid/widget/ImageView;
return-object v0
.end method
.method public getLocalInfo()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bLocalInfo:Z
return v0
.end method
.method public getNeedUpdate()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bNeedUpdate:Z
return v0
.end method
.method public getPreviewName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPreviewName:Ljava/lang/String;
return-object v0
.end method
.method public getPreviewUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPriviewUrl:Ljava/lang/String;
return-object v0
.end method
.method public getPush()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->push:Ljava/lang/String;
return-object v0
.end method
.method public getSmall()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strSmall:Ljava/lang/String;
return-object v0
.end method
.method public getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTag:Ljava/lang/String;
return-object v0
.end method
.method public getTemplate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTemplate:Ljava/lang/String;
return-object v0
.end method
.method public getTextView()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mTextView:Landroid/widget/TextView;
return-object v0
.end method
.method public getThemeButton()Lcom/pinguo/share/theme/ThemeButton;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mButton:Lcom/pinguo/share/theme/ThemeButton;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTitle:Ljava/lang/String;
return-object v0
.end method
.method public getUpdate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUpdate:Ljava/lang/String;
return-object v0
.end method
.method public getUrlPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUrlPrefix:Ljava/lang/String;
return-object v0
.end method
.method public setActivity(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nActivity:I
return-void
.end method
.method public setContent(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->content:Ljava/lang/String;
return-void
.end method
.method public setDefault(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strDefault:Ljava/lang/String;
return-void
.end method
.method public setDescription(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->description:Ljava/lang/String;
return-void
.end method
.method public setDownloaded()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bDownloaded:Z
return-void
.end method
.method public setId(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->nId:I
return-void
.end method
.method public setImageView(Landroid/widget/ImageView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mImageView:Landroid/widget/ImageView;
return-void
.end method
.method public setLocalInfo(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->bLocalInfo:Z
return-void
.end method
.method public setPreviewName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPreviewName:Ljava/lang/String;
return-void
.end method
.method public setPreviewUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strPriviewUrl:Ljava/lang/String;
return-void
.end method
.method public setPush(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->push:Ljava/lang/String;
return-void
.end method
.method public setSmall(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strSmall:Ljava/lang/String;
return-void
.end method
.method public setTag(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTag:Ljava/lang/String;
return-void
.end method
.method public setTemplate(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTemplate:Ljava/lang/String;
return-void
.end method
.method public setTextView(Landroid/widget/TextView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mTextView:Landroid/widget/TextView;
return-void
.end method
.method public setThemeButton(Lcom/pinguo/share/theme/ThemeButton;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->mButton:Lcom/pinguo/share/theme/ThemeButton;
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strTitle:Ljava/lang/String;
return-void
.end method
.method public setUpdate(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUpdate:Ljava/lang/String;
return-void
.end method
.method public setUrlPrefix(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeXMLStruct;->strUrlPrefix:Ljava/lang/String;
return-void
.end method