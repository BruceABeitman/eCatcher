.class public Lcom/twidroid/ui/themes/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "UberbarItem"
.field private static final b:Ljava/lang/String; = "uberbar"
.field private static final c:Ljava/lang/String; = "oauth"
.field private static final d:Ljava/lang/String; = "consumerkey"
.field private static final e:Ljava/lang/String; = "consumersecret"
.field private static final f:Ljava/lang/String; = "theme"
.field private static final g:Ljava/lang/String; = "config"
.field private static final h:Ljava/lang/String; = "uberbar"
.field private static final i:Ljava/lang/String; = "name"
.field private static final j:Ljava/lang/String; = "type"
.field private static final k:Ljava/lang/String; = "icon"
.field private static final l:Ljava/lang/String; = "value"
.field private static final m:Ljava/lang/String; = "description"
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/util/List;
.method constructor <init>(Landroid/content/res/XmlResourceParser;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/themes/b;->q:Ljava/util/List;
:try_start_a
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I
move-result v0
:goto_11
const/4 v1, 0x1
if-eq v0, v1, :cond_c4
packed-switch v0, :pswitch_data_106
:cond_17
:goto_17
:pswitch_17
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
move-result v0
goto :goto_11
:pswitch_1c
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "config"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
:cond_28
const-string v1, "oauth"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_30
:cond_30
const-string v1, "consumerkey"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_41
const/4 v1, 0x0
const-string v2, "value"
invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/ui/themes/b;->n:Ljava/lang/String;
:cond_41
const-string v1, "consumersecret"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_52
const/4 v1, 0x0
const-string v2, "value"
invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/ui/themes/b;->o:Ljava/lang/String;
:cond_52
const-string v1, "theme"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_63
const/4 v1, 0x0
const-string v2, "name"
invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/ui/themes/b;->p:Ljava/lang/String;
:cond_63
const-string v1, "uberbar"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6b
:cond_6b
const-string v1, "UberbarItem"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
const-string v0, ""
const/4 v1, 0x0
const-string v2, "type"
invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
const-string v3, "name"
invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
const-string v4, "icon"
const/4 v5, 0x0
invoke-interface {p1, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
move-result v3
const/4 v4, 0x0
const-string v5, "description"
invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_9b
const/4 v0, 0x0
const-string v4, "description"
invoke-interface {p1, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_9b
const/4 v4, 0x0
const-string v5, "value"
invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "list"
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_c5
new-instance v5, Lcom/twidroid/ui/themes/c;
invoke-direct {v5}, Lcom/twidroid/ui/themes/c;-><init>()V
iput-object v2, v5, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;
iput-object v1, v5, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
iput-object v4, v5, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
iput v3, v5, Lcom/twidroid/ui/themes/c;->c:I
iput-object v0, v5, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->q:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_be
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_be} :catch_c0
.catch Ljava/io/IOException; {:try_start_a .. :try_end_be} :catch_e3
goto/16 :goto_17
:catch_c0
move-exception v0
invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
:goto_c4
:cond_c4
return-void
:try_start_c5
:cond_c5
const-string v5, "url"
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_e8
new-instance v5, Lcom/twidroid/ui/themes/c;
invoke-direct {v5}, Lcom/twidroid/ui/themes/c;-><init>()V
iput-object v2, v5, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;
iput-object v1, v5, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
iput-object v4, v5, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
iput v3, v5, Lcom/twidroid/ui/themes/c;->c:I
iput-object v0, v5, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->q:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_e1
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_e1} :catch_c0
.catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e1} :catch_e3
goto/16 :goto_17
:catch_e3
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_c4
:cond_e8
:try_start_e8
const-string v5, "channel"
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_17
new-instance v5, Lcom/twidroid/ui/themes/c;
invoke-direct {v5}, Lcom/twidroid/ui/themes/c;-><init>()V
iput-object v2, v5, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;
iput-object v1, v5, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
iput-object v4, v5, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
iput v3, v5, Lcom/twidroid/ui/themes/c;->c:I
iput-object v0, v5, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->q:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_104
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e8 .. :try_end_104} :catch_c0
.catch Ljava/io/IOException; {:try_start_e8 .. :try_end_104} :catch_e3
goto/16 :goto_17
:pswitch_data_106
.packed-switch 0x0
:pswitch_17
:pswitch_17
:pswitch_1c
:pswitch_17
:pswitch_17
.end packed-switch
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->n:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->o:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->p:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/b;->q:Ljava/util/List;
return-object v0
.end method