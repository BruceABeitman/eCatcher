.class public Lcom/glympse/android/lib/UrlParserDepr;
.super Ljava/lang/Object;
.source "UrlParserDepr.java"
.implements Lcom/glympse/android/core/GCommon;
.field protected oh:Lcom/glympse/android/lib/GTicketPrivate;
.field protected sL:I
.field protected tT:Ljava/lang/String;
.field protected tU:Lcom/glympse/android/hal/GVector;
.field protected tV:Ljava/lang/String;
.field protected tW:Ljava/lang/String;
.field protected tX:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private x(I)Lcom/glympse/android/lib/jf;
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
if-nez v0, :cond_b
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_13
if-ge v1, v2, :cond_26
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/jf;
iget v3, v0, Lcom/glympse/android/lib/jf;->tY:I
if-ne v3, p1, :cond_22
:goto_21
return-object v0
:cond_22
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_26
new-instance v0, Lcom/glympse/android/lib/jg;
invoke-direct {v0, p1}, Lcom/glympse/android/lib/jg;-><init>(I)V
iget-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_21
.end method
.method protected a(Ljava/lang/String;ILjava/lang/String;)Z
.registers 11
const-wide/16 v5, 0x3e8
const-wide/16 v3, 0x3c
const/4 v0, 0x1
const-string v1, "rec_type"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_14
invoke-direct {p0, p2}, Lcom/glympse/android/lib/UrlParserDepr;->x(I)Lcom/glympse/android/lib/jf;
move-result-object v1
iput-object p3, v1, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
:goto_13
return v0
:cond_14
const-string v1, "rec_addr"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_23
invoke-direct {p0, p2}, Lcom/glympse/android/lib/UrlParserDepr;->x(I)Lcom/glympse/android/lib/jf;
move-result-object v1
iput-object p3, v1, Lcom/glympse/android/lib/jf;->tZ:Ljava/lang/String;
goto :goto_13
:cond_23
const-string v1, "rec_name"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_32
invoke-direct {p0, p2}, Lcom/glympse/android/lib/UrlParserDepr;->x(I)Lcom/glympse/android/lib/jf;
move-result-object v1
iput-object p3, v1, Lcom/glympse/android/lib/jf;->_name:Ljava/lang/String;
goto :goto_13
:cond_32
const-string v1, "dur_secs"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
mul-long/2addr v1, v5
long-to-int v1, v1
iput v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->sL:I
goto :goto_13
:cond_43
const-string v1, "dur_mins"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_55
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
mul-long/2addr v1, v3
mul-long/2addr v1, v5
long-to-int v1, v1
iput v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->sL:I
goto :goto_13
:cond_55
const-string v1, "dur_hrs"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_68
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
mul-long/2addr v1, v3
mul-long/2addr v1, v3
mul-long/2addr v1, v5
long-to-int v1, v1
iput v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->sL:I
goto :goto_13
:cond_68
const-string v1, "dest_type"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_73
iput-object p3, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
goto :goto_13
:cond_73
const-string v1, "dest_addr"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7e
iput-object p3, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
goto :goto_13
:cond_7e
const-string v1, "dest_name"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_89
iput-object p3, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
goto :goto_13
:cond_89
const-string v1, "msg_text"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_94
iput-object p3, p0, Lcom/glympse/android/lib/UrlParserDepr;->tT:Ljava/lang/String;
goto :goto_13
:cond_94
const/4 v0, 0x0
goto/16 :goto_13
.end method
.method protected cQ()V
.registers 12
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
if-eqz v0, :cond_bb
:cond_c
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
const-string v1, "geo"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12e
:cond_1e
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_127
const-wide/high16 v2, 0x7ff8
const-wide/high16 v0, 0x7ff8
iget-object v4, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
const-string v5, "("
const-string v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
const-string v5, ")"
const-string v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
const-string v5, ","
invoke-static {v4, v5}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
move-result-object v4
const/4 v5, 0x2
invoke-virtual {v4}, Lcom/glympse/android/hal/GVector;->length()I
move-result v6
if-ne v5, v6, :cond_1ff
const/4 v0, 0x0
invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D
move-result-wide v2
const/4 v0, 0x1
invoke-virtual {v4, v0}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D
move-result-wide v0
move-wide v7, v0
move-wide v9, v2
move-wide v3, v9
move-wide v1, v7
:goto_63
const/4 v0, 0x0
invoke-static {v3, v4, v1, v2, v0}, Lcom/glympse/android/api/GlympseFactory;->createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GPlacePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GPlacePrivate;->hasLocation()Z
move-result v5
if-eqz v5, :cond_111
iget-object v5, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
if-nez v5, :cond_97
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const/4 v6, 0x5
invoke-static {v3, v4, v6}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x5
invoke-static {v1, v2, v4}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
:cond_97
iget-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GPlacePrivate;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v1, :cond_ab
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_ab
iget-object v1, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
const/4 v2, -0x1
const/4 v3, 0x0
invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
:goto_b2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tX:Ljava/lang/String;
:cond_bb
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
if-eqz v0, :cond_1fe
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/ji;
invoke-direct {v1}, Lcom/glympse/android/lib/ji;-><init>()V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v3
const/4 v0, 0x0
move v2, v0
:goto_d1
if-ge v2, v3, :cond_1fb
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/jf;
const/4 v1, 0x0
iget-object v4, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_ef
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "email"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_145
const/4 v1, 0x2
:cond_ef
:goto_ef
const/4 v4, 0x2
if-eq v4, v1, :cond_ff
const/4 v4, 0x3
if-eq v4, v1, :cond_ff
const/16 v4, 0x8
if-eq v4, v1, :cond_ff
const/4 v4, 0x7
if-eq v4, v1, :cond_ff
const/4 v4, 0x1
if-ne v4, v1, :cond_1d1
:cond_ff
iget-object v4, v0, Lcom/glympse/android/lib/jf;->tZ:Ljava/lang/String;
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_1d1
const/4 v0, 0x4
const-string v1, "[UrlParser] ParsedRecipient has no address"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
:goto_10d
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_d1
:cond_111
const/4 v0, 0x4
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[UrlParser] Destination has invalid address: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/UrlParserDepr;->tW:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_b2
:cond_127
const/4 v0, 0x4
const-string v1, "[UrlParser] Destination has no address"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_b2
:cond_12e
const/4 v0, 0x4
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "[UrlParser] Unknown destination type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/UrlParserDepr;->tV:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto/16 :goto_b2
:cond_145
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "sms"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_151
const/4 v1, 0x3
goto :goto_ef
:cond_151
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "twitter"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15d
const/4 v1, 0x4
goto :goto_ef
:cond_15d
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "facebook"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_169
const/4 v1, 0x5
goto :goto_ef
:cond_169
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "evernote"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_177
const/16 v1, 0xa
goto/16 :goto_ef
:cond_177
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "share"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_185
const/16 v1, 0x8
goto/16 :goto_ef
:cond_185
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "clipboard"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_193
const/16 v1, 0x9
goto/16 :goto_ef
:cond_193
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "link"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1a0
const/4 v1, 0x6
goto/16 :goto_ef
:cond_1a0
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "group"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1ad
const/4 v1, 0x7
goto/16 :goto_ef
:cond_1ad
iget-object v1, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
const-string v4, "account"
invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1ba
const/4 v1, 0x1
goto/16 :goto_ef
:cond_1ba
const/4 v1, 0x4
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "[UrlParser] ParsedRecipient has unknown type: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v0, Lcom/glympse/android/lib/jf;->mA:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto/16 :goto_10d
:cond_1d1
const/4 v4, 0x5
if-eq v4, v1, :cond_1d7
const/4 v4, 0x4
if-ne v4, v1, :cond_1dd
:cond_1d7
const/4 v4, 0x0
iput-object v4, v0, Lcom/glympse/android/lib/jf;->tZ:Ljava/lang/String;
const/4 v4, 0x0
iput-object v4, v0, Lcom/glympse/android/lib/jf;->_name:Ljava/lang/String;
:cond_1dd
iget-object v4, v0, Lcom/glympse/android/lib/jf;->_name:Ljava/lang/String;
iget-object v0, v0, Lcom/glympse/android/lib/jf;->tZ:Ljava/lang/String;
invoke-static {v1, v4, v0}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v1
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
if-nez v0, :cond_1f4
const/4 v0, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v0, v4, v5}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
:cond_1f4
iget-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->oh:Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z
goto/16 :goto_10d
:cond_1fb
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/UrlParserDepr;->tU:Lcom/glympse/android/hal/GVector;
:cond_1fe
return-void
:cond_1ff
move-wide v7, v0
move-wide v9, v2
move-wide v3, v9
move-wide v1, v7
goto/16 :goto_63
.end method