.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "AddressBookParsedResult.java"
.field private final addressTypes:[Ljava/lang/String;
.field private final addresses:[Ljava/lang/String;
.field private final birthday:Ljava/lang/String;
.field private final emailTypes:[Ljava/lang/String;
.field private final emails:[Ljava/lang/String;
.field private final geo:[Ljava/lang/String;
.field private final instantMessenger:Ljava/lang/String;
.field private final names:[Ljava/lang/String;
.field private final nicknames:[Ljava/lang/String;
.field private final note:Ljava/lang/String;
.field private final org:Ljava/lang/String;
.field private final phoneNumbers:[Ljava/lang/String;
.field private final phoneTypes:[Ljava/lang/String;
.field private final pronunciation:Ljava/lang/String;
.field private final title:Ljava/lang/String;
.field private final urls:[Ljava/lang/String;
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 19
sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;
invoke-direct {p0, v1}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V
iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;
iput-object p4, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;
iput-object p5, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;
iput-object p6, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;
iput-object p7, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;
iput-object p8, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;
iput-object p9, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;
iput-object p10, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;
iput-object p11, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;
iput-object p12, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;
iput-object p13, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;
move-object/from16 v0, p14
iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;
move-object/from16 v0, p15
iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;
move-object/from16 v0, p16
iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 25
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v4, p2
move-object/from16 v5, p3
move-object/from16 v6, p4
move-object/from16 v7, p5
move-object/from16 v10, p6
move-object/from16 v11, p7
invoke-direct/range {v0 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public getAddressTypes()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;
return-object v0
.end method
.method public getAddresses()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;
return-object v0
.end method
.method public getBirthday()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;
return-object v0
.end method
.method public getDisplayResult()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x64
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getEmailTypes()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;
return-object v0
.end method
.method public getEmails()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;
return-object v0
.end method
.method public getGeo()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;
return-object v0
.end method
.method public getInstantMessenger()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;
return-object v0
.end method
.method public getNames()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;
return-object v0
.end method
.method public getNicknames()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;
return-object v0
.end method
.method public getNote()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;
return-object v0
.end method
.method public getOrg()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;
return-object v0
.end method
.method public getPhoneNumbers()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;
return-object v0
.end method
.method public getPhoneTypes()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;
return-object v0
.end method
.method public getPronunciation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;
return-object v0
.end method
.method public getURLs()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;
return-object v0
.end method