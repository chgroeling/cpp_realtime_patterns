
obj/state_pattern/state_pattern_shared_ptr.o:     file format pe-i386


Disassembly of section .text:

00000000 <__gthread_active_p>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	a1 00 00 00 00       	mov    0x0,%eax
   8:	5d                   	pop    %ebp
   9:	c3                   	ret    

0000000a <__gnu_cxx::__exchange_and_add(int volatile*, int)>:
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	8b 55 0c             	mov    0xc(%ebp),%edx
  10:	8b 45 08             	mov    0x8(%ebp),%eax
  13:	f0 0f c1 10          	lock xadd %edx,(%eax)
  17:	89 d0                	mov    %edx,%eax
  19:	5d                   	pop    %ebp
  1a:	c3                   	ret    

0000001b <__gnu_cxx::__atomic_add(int volatile*, int)>:
  1b:	55                   	push   %ebp
  1c:	89 e5                	mov    %esp,%ebp
  1e:	8b 55 0c             	mov    0xc(%ebp),%edx
  21:	8b 45 08             	mov    0x8(%ebp),%eax
  24:	f0 01 10             	lock add %edx,(%eax)
  27:	90                   	nop
  28:	5d                   	pop    %ebp
  29:	c3                   	ret    

0000002a <__gnu_cxx::__exchange_and_add_single(int*, int)>:
  2a:	55                   	push   %ebp
  2b:	89 e5                	mov    %esp,%ebp
  2d:	83 ec 10             	sub    $0x10,%esp
  30:	8b 45 08             	mov    0x8(%ebp),%eax
  33:	8b 00                	mov    (%eax),%eax
  35:	89 45 fc             	mov    %eax,-0x4(%ebp)
  38:	8b 45 08             	mov    0x8(%ebp),%eax
  3b:	8b 10                	mov    (%eax),%edx
  3d:	8b 45 0c             	mov    0xc(%ebp),%eax
  40:	01 c2                	add    %eax,%edx
  42:	8b 45 08             	mov    0x8(%ebp),%eax
  45:	89 10                	mov    %edx,(%eax)
  47:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4a:	c9                   	leave  
  4b:	c3                   	ret    

0000004c <__gnu_cxx::__atomic_add_single(int*, int)>:
  4c:	55                   	push   %ebp
  4d:	89 e5                	mov    %esp,%ebp
  4f:	8b 45 08             	mov    0x8(%ebp),%eax
  52:	8b 10                	mov    (%eax),%edx
  54:	8b 45 0c             	mov    0xc(%ebp),%eax
  57:	01 c2                	add    %eax,%edx
  59:	8b 45 08             	mov    0x8(%ebp),%eax
  5c:	89 10                	mov    %edx,(%eax)
  5e:	90                   	nop
  5f:	5d                   	pop    %ebp
  60:	c3                   	ret    

00000061 <__gnu_cxx::__exchange_and_add_dispatch(int*, int)>:
  61:	55                   	push   %ebp
  62:	89 e5                	mov    %esp,%ebp
  64:	83 ec 08             	sub    $0x8,%esp
  67:	e8 94 ff ff ff       	call   0 <__gthread_active_p>
  6c:	85 c0                	test   %eax,%eax
  6e:	0f 95 c0             	setne  %al
  71:	84 c0                	test   %al,%al
  73:	74 14                	je     89 <__gnu_cxx::__exchange_and_add_dispatch(int*, int)+0x28>
  75:	8b 45 0c             	mov    0xc(%ebp),%eax
  78:	89 44 24 04          	mov    %eax,0x4(%esp)
  7c:	8b 45 08             	mov    0x8(%ebp),%eax
  7f:	89 04 24             	mov    %eax,(%esp)
  82:	e8 83 ff ff ff       	call   a <__gnu_cxx::__exchange_and_add(int volatile*, int)>
  87:	eb 13                	jmp    9c <__gnu_cxx::__exchange_and_add_dispatch(int*, int)+0x3b>
  89:	8b 45 0c             	mov    0xc(%ebp),%eax
  8c:	89 44 24 04          	mov    %eax,0x4(%esp)
  90:	8b 45 08             	mov    0x8(%ebp),%eax
  93:	89 04 24             	mov    %eax,(%esp)
  96:	e8 8f ff ff ff       	call   2a <__gnu_cxx::__exchange_and_add_single(int*, int)>
  9b:	90                   	nop
  9c:	c9                   	leave  
  9d:	c3                   	ret    

0000009e <__gnu_cxx::__atomic_add_dispatch(int*, int)>:
  9e:	55                   	push   %ebp
  9f:	89 e5                	mov    %esp,%ebp
  a1:	83 ec 08             	sub    $0x8,%esp
  a4:	e8 57 ff ff ff       	call   0 <__gthread_active_p>
  a9:	85 c0                	test   %eax,%eax
  ab:	0f 95 c0             	setne  %al
  ae:	84 c0                	test   %al,%al
  b0:	74 14                	je     c6 <__gnu_cxx::__atomic_add_dispatch(int*, int)+0x28>
  b2:	8b 45 0c             	mov    0xc(%ebp),%eax
  b5:	89 44 24 04          	mov    %eax,0x4(%esp)
  b9:	8b 45 08             	mov    0x8(%ebp),%eax
  bc:	89 04 24             	mov    %eax,(%esp)
  bf:	e8 57 ff ff ff       	call   1b <__gnu_cxx::__atomic_add(int volatile*, int)>
  c4:	eb 12                	jmp    d8 <__gnu_cxx::__atomic_add_dispatch(int*, int)+0x3a>
  c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  c9:	89 44 24 04          	mov    %eax,0x4(%esp)
  cd:	8b 45 08             	mov    0x8(%ebp),%eax
  d0:	89 04 24             	mov    %eax,(%esp)
  d3:	e8 74 ff ff ff       	call   4c <__gnu_cxx::__atomic_add_single(int*, int)>
  d8:	90                   	nop
  d9:	c9                   	leave  
  da:	c3                   	ret    
  db:	90                   	nop

000000dc <Context::Context(std::shared_ptr<IState>)>:
  dc:	55                   	push   %ebp
  dd:	89 e5                	mov    %esp,%ebp
  df:	83 ec 28             	sub    $0x28,%esp
  e2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  e8:	89 c1                	mov    %eax,%ecx
  ea:	e8 00 00 00 00       	call   ef <Context::Context(std::shared_ptr<IState>)+0x13>
  ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  f2:	8b 55 08             	mov    0x8(%ebp),%edx
  f5:	89 14 24             	mov    %edx,(%esp)
  f8:	89 c1                	mov    %eax,%ecx
  fa:	e8 00 00 00 00       	call   ff <Context::Context(std::shared_ptr<IState>)+0x23>
  ff:	83 ec 04             	sub    $0x4,%esp
 102:	90                   	nop
 103:	c9                   	leave  
 104:	c2 04 00             	ret    $0x4
 107:	90                   	nop

00000108 <Context::ChangeState(std::shared_ptr<IState>)>:
 108:	55                   	push   %ebp
 109:	89 e5                	mov    %esp,%ebp
 10b:	83 ec 28             	sub    $0x28,%esp
 10e:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 111:	8b 45 f4             	mov    -0xc(%ebp),%eax
 114:	8b 55 08             	mov    0x8(%ebp),%edx
 117:	89 14 24             	mov    %edx,(%esp)
 11a:	89 c1                	mov    %eax,%ecx
 11c:	e8 00 00 00 00       	call   121 <Context::ChangeState(std::shared_ptr<IState>)+0x19>
 121:	83 ec 04             	sub    $0x4,%esp
 124:	90                   	nop
 125:	c9                   	leave  
 126:	c2 04 00             	ret    $0x4
 129:	90                   	nop

0000012a <Context::Push()>:
 12a:	55                   	push   %ebp
 12b:	89 e5                	mov    %esp,%ebp
 12d:	83 ec 18             	sub    $0x18,%esp
 130:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 133:	8b 45 f4             	mov    -0xc(%ebp),%eax
 136:	89 c1                	mov    %eax,%ecx
 138:	e8 00 00 00 00       	call   13d <Context::Push()+0x13>
 13d:	8b 10                	mov    (%eax),%edx
 13f:	8b 12                	mov    (%edx),%edx
 141:	89 c1                	mov    %eax,%ecx
 143:	ff d2                	call   *%edx
 145:	90                   	nop
 146:	c9                   	leave  
 147:	c3                   	ret    

00000148 <Context::Coin()>:
 148:	55                   	push   %ebp
 149:	89 e5                	mov    %esp,%ebp
 14b:	83 ec 18             	sub    $0x18,%esp
 14e:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 151:	8b 45 f4             	mov    -0xc(%ebp),%eax
 154:	89 c1                	mov    %eax,%ecx
 156:	e8 00 00 00 00       	call   15b <Context::Coin()+0x13>
 15b:	8b 10                	mov    (%eax),%edx
 15d:	83 c2 04             	add    $0x4,%edx
 160:	8b 12                	mov    (%edx),%edx
 162:	89 c1                	mov    %eax,%ecx
 164:	ff d2                	call   *%edx
 166:	90                   	nop
 167:	c9                   	leave  
 168:	c3                   	ret    
 169:	90                   	nop

0000016a <LockedConcreteState::LockedConcreteState()>:
 16a:	55                   	push   %ebp
 16b:	89 e5                	mov    %esp,%ebp
 16d:	83 ec 18             	sub    $0x18,%esp
 170:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 173:	8b 45 f4             	mov    -0xc(%ebp),%eax
 176:	89 c1                	mov    %eax,%ecx
 178:	e8 00 00 00 00       	call   17d <LockedConcreteState::LockedConcreteState()+0x13>
 17d:	ba 08 00 00 00       	mov    $0x8,%edx
 182:	8b 45 f4             	mov    -0xc(%ebp),%eax
 185:	89 10                	mov    %edx,(%eax)
 187:	8b 45 f4             	mov    -0xc(%ebp),%eax
 18a:	83 c0 04             	add    $0x4,%eax
 18d:	89 c1                	mov    %eax,%ecx
 18f:	e8 00 00 00 00       	call   194 <LockedConcreteState::LockedConcreteState()+0x2a>
 194:	90                   	nop
 195:	c9                   	leave  
 196:	c3                   	ret    
 197:	90                   	nop

00000198 <LockedConcreteState::SetContext(std::shared_ptr<Context>)>:
 198:	55                   	push   %ebp
 199:	89 e5                	mov    %esp,%ebp
 19b:	83 ec 28             	sub    $0x28,%esp
 19e:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 1a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1a4:	8d 50 04             	lea    0x4(%eax),%edx
 1a7:	8b 45 08             	mov    0x8(%ebp),%eax
 1aa:	89 04 24             	mov    %eax,(%esp)
 1ad:	89 d1                	mov    %edx,%ecx
 1af:	e8 00 00 00 00       	call   1b4 <LockedConcreteState::SetContext(std::shared_ptr<Context>)+0x1c>
 1b4:	83 ec 04             	sub    $0x4,%esp
 1b7:	90                   	nop
 1b8:	c9                   	leave  
 1b9:	c2 04 00             	ret    $0x4

000001bc <LockedConcreteState::Push()>:
 1bc:	55                   	push   %ebp
 1bd:	89 e5                	mov    %esp,%ebp
 1bf:	83 ec 28             	sub    $0x28,%esp
 1c2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 1c5:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
 1cc:	e8 00 00 00 00       	call   1d1 <LockedConcreteState::Push()+0x15>
 1d1:	90                   	nop
 1d2:	c9                   	leave  
 1d3:	c3                   	ret    

000001d4 <LockedConcreteState::Coin()>:
 1d4:	55                   	push   %ebp
 1d5:	89 e5                	mov    %esp,%ebp
 1d7:	53                   	push   %ebx
 1d8:	83 ec 44             	sub    $0x44,%esp
 1db:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 1de:	c7 04 24 48 00 00 00 	movl   $0x48,(%esp)
 1e5:	e8 00 00 00 00       	call   1ea <LockedConcreteState::Coin()+0x16>
 1ea:	8d 45 e0             	lea    -0x20(%ebp),%eax
 1ed:	89 04 24             	mov    %eax,(%esp)
 1f0:	e8 00 00 00 00       	call   1f5 <LockedConcreteState::Coin()+0x21>
 1f5:	8d 45 e0             	lea    -0x20(%ebp),%eax
 1f8:	89 c1                	mov    %eax,%ecx
 1fa:	e8 00 00 00 00       	call   1ff <LockedConcreteState::Coin()+0x2b>
 1ff:	89 c3                	mov    %eax,%ebx
 201:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 204:	8d 50 04             	lea    0x4(%eax),%edx
 207:	8d 45 e8             	lea    -0x18(%ebp),%eax
 20a:	89 14 24             	mov    %edx,(%esp)
 20d:	89 c1                	mov    %eax,%ecx
 20f:	e8 00 00 00 00       	call   214 <LockedConcreteState::Coin()+0x40>
 214:	83 ec 04             	sub    $0x4,%esp
 217:	8d 45 e8             	lea    -0x18(%ebp),%eax
 21a:	89 04 24             	mov    %eax,(%esp)
 21d:	89 d9                	mov    %ebx,%ecx
 21f:	e8 88 00 00 00       	call   2ac <UnlockedConcreteState::SetContext(std::shared_ptr<Context>)>
 224:	83 ec 04             	sub    $0x4,%esp
 227:	8d 45 e8             	lea    -0x18(%ebp),%eax
 22a:	89 c1                	mov    %eax,%ecx
 22c:	e8 00 00 00 00       	call   231 <LockedConcreteState::Coin()+0x5d>
 231:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 234:	83 c0 04             	add    $0x4,%eax
 237:	89 c1                	mov    %eax,%ecx
 239:	e8 00 00 00 00       	call   23e <LockedConcreteState::Coin()+0x6a>
 23e:	89 c3                	mov    %eax,%ebx
 240:	8d 45 f0             	lea    -0x10(%ebp),%eax
 243:	8d 55 e0             	lea    -0x20(%ebp),%edx
 246:	89 14 24             	mov    %edx,(%esp)
 249:	89 c1                	mov    %eax,%ecx
 24b:	e8 00 00 00 00       	call   250 <LockedConcreteState::Coin()+0x7c>
 250:	83 ec 04             	sub    $0x4,%esp
 253:	8d 45 f0             	lea    -0x10(%ebp),%eax
 256:	89 04 24             	mov    %eax,(%esp)
 259:	89 d9                	mov    %ebx,%ecx
 25b:	e8 a8 fe ff ff       	call   108 <Context::ChangeState(std::shared_ptr<IState>)>
 260:	83 ec 04             	sub    $0x4,%esp
 263:	8d 45 f0             	lea    -0x10(%ebp),%eax
 266:	89 c1                	mov    %eax,%ecx
 268:	e8 00 00 00 00       	call   26d <LockedConcreteState::Coin()+0x99>
 26d:	8d 45 e0             	lea    -0x20(%ebp),%eax
 270:	89 c1                	mov    %eax,%ecx
 272:	e8 00 00 00 00       	call   277 <LockedConcreteState::Coin()+0xa3>
 277:	90                   	nop
 278:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 27b:	c9                   	leave  
 27c:	c3                   	ret    
 27d:	90                   	nop

0000027e <UnlockedConcreteState::UnlockedConcreteState()>:
 27e:	55                   	push   %ebp
 27f:	89 e5                	mov    %esp,%ebp
 281:	83 ec 18             	sub    $0x18,%esp
 284:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 287:	8b 45 f4             	mov    -0xc(%ebp),%eax
 28a:	89 c1                	mov    %eax,%ecx
 28c:	e8 00 00 00 00       	call   291 <UnlockedConcreteState::UnlockedConcreteState()+0x13>
 291:	ba 08 00 00 00       	mov    $0x8,%edx
 296:	8b 45 f4             	mov    -0xc(%ebp),%eax
 299:	89 10                	mov    %edx,(%eax)
 29b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 29e:	83 c0 04             	add    $0x4,%eax
 2a1:	89 c1                	mov    %eax,%ecx
 2a3:	e8 00 00 00 00       	call   2a8 <UnlockedConcreteState::UnlockedConcreteState()+0x2a>
 2a8:	90                   	nop
 2a9:	c9                   	leave  
 2aa:	c3                   	ret    
 2ab:	90                   	nop

000002ac <UnlockedConcreteState::SetContext(std::shared_ptr<Context>)>:
 2ac:	55                   	push   %ebp
 2ad:	89 e5                	mov    %esp,%ebp
 2af:	83 ec 28             	sub    $0x28,%esp
 2b2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 2b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2b8:	8d 50 04             	lea    0x4(%eax),%edx
 2bb:	8b 45 08             	mov    0x8(%ebp),%eax
 2be:	89 04 24             	mov    %eax,(%esp)
 2c1:	89 d1                	mov    %edx,%ecx
 2c3:	e8 00 00 00 00       	call   2c8 <UnlockedConcreteState::SetContext(std::shared_ptr<Context>)+0x1c>
 2c8:	83 ec 04             	sub    $0x4,%esp
 2cb:	90                   	nop
 2cc:	c9                   	leave  
 2cd:	c2 04 00             	ret    $0x4

000002d0 <UnlockedConcreteState::Push()>:
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	83 ec 44             	sub    $0x44,%esp
 2d7:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 2da:	c7 04 24 84 00 00 00 	movl   $0x84,(%esp)
 2e1:	e8 00 00 00 00       	call   2e6 <UnlockedConcreteState::Push()+0x16>
 2e6:	8d 45 e0             	lea    -0x20(%ebp),%eax
 2e9:	89 04 24             	mov    %eax,(%esp)
 2ec:	e8 00 00 00 00       	call   2f1 <UnlockedConcreteState::Push()+0x21>
 2f1:	8d 45 e0             	lea    -0x20(%ebp),%eax
 2f4:	89 c1                	mov    %eax,%ecx
 2f6:	e8 00 00 00 00       	call   2fb <UnlockedConcreteState::Push()+0x2b>
 2fb:	89 c3                	mov    %eax,%ebx
 2fd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 300:	8d 50 04             	lea    0x4(%eax),%edx
 303:	8d 45 e8             	lea    -0x18(%ebp),%eax
 306:	89 14 24             	mov    %edx,(%esp)
 309:	89 c1                	mov    %eax,%ecx
 30b:	e8 00 00 00 00       	call   310 <UnlockedConcreteState::Push()+0x40>
 310:	83 ec 04             	sub    $0x4,%esp
 313:	8d 45 e8             	lea    -0x18(%ebp),%eax
 316:	89 04 24             	mov    %eax,(%esp)
 319:	89 d9                	mov    %ebx,%ecx
 31b:	e8 78 fe ff ff       	call   198 <LockedConcreteState::SetContext(std::shared_ptr<Context>)>
 320:	83 ec 04             	sub    $0x4,%esp
 323:	8d 45 e8             	lea    -0x18(%ebp),%eax
 326:	89 c1                	mov    %eax,%ecx
 328:	e8 00 00 00 00       	call   32d <UnlockedConcreteState::Push()+0x5d>
 32d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 330:	83 c0 04             	add    $0x4,%eax
 333:	89 c1                	mov    %eax,%ecx
 335:	e8 00 00 00 00       	call   33a <UnlockedConcreteState::Push()+0x6a>
 33a:	89 c3                	mov    %eax,%ebx
 33c:	8d 45 f0             	lea    -0x10(%ebp),%eax
 33f:	8d 55 e0             	lea    -0x20(%ebp),%edx
 342:	89 14 24             	mov    %edx,(%esp)
 345:	89 c1                	mov    %eax,%ecx
 347:	e8 00 00 00 00       	call   34c <UnlockedConcreteState::Push()+0x7c>
 34c:	83 ec 04             	sub    $0x4,%esp
 34f:	8d 45 f0             	lea    -0x10(%ebp),%eax
 352:	89 04 24             	mov    %eax,(%esp)
 355:	89 d9                	mov    %ebx,%ecx
 357:	e8 ac fd ff ff       	call   108 <Context::ChangeState(std::shared_ptr<IState>)>
 35c:	83 ec 04             	sub    $0x4,%esp
 35f:	8d 45 f0             	lea    -0x10(%ebp),%eax
 362:	89 c1                	mov    %eax,%ecx
 364:	e8 00 00 00 00       	call   369 <UnlockedConcreteState::Push()+0x99>
 369:	8d 45 e0             	lea    -0x20(%ebp),%eax
 36c:	89 c1                	mov    %eax,%ecx
 36e:	e8 00 00 00 00       	call   373 <UnlockedConcreteState::Push()+0xa3>
 373:	90                   	nop
 374:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 377:	c9                   	leave  
 378:	c3                   	ret    
 379:	90                   	nop

0000037a <UnlockedConcreteState::Coin()>:
 37a:	55                   	push   %ebp
 37b:	89 e5                	mov    %esp,%ebp
 37d:	83 ec 28             	sub    $0x28,%esp
 380:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 383:	c7 04 24 c4 00 00 00 	movl   $0xc4,(%esp)
 38a:	e8 00 00 00 00       	call   38f <UnlockedConcreteState::Coin()+0x15>
 38f:	90                   	nop
 390:	c9                   	leave  
 391:	c3                   	ret    

00000392 <Client()>:
 392:	55                   	push   %ebp
 393:	89 e5                	mov    %esp,%ebp
 395:	53                   	push   %ebx
 396:	83 ec 34             	sub    $0x34,%esp
 399:	8d 45 e8             	lea    -0x18(%ebp),%eax
 39c:	89 04 24             	mov    %eax,(%esp)
 39f:	e8 00 00 00 00       	call   3a4 <Client()+0x12>
 3a4:	8d 45 e0             	lea    -0x20(%ebp),%eax
 3a7:	8d 55 e8             	lea    -0x18(%ebp),%edx
 3aa:	89 54 24 04          	mov    %edx,0x4(%esp)
 3ae:	89 04 24             	mov    %eax,(%esp)
 3b1:	e8 00 00 00 00       	call   3b6 <Client()+0x24>
 3b6:	8d 45 e8             	lea    -0x18(%ebp),%eax
 3b9:	89 c1                	mov    %eax,%ecx
 3bb:	e8 00 00 00 00       	call   3c0 <Client()+0x2e>
 3c0:	89 c3                	mov    %eax,%ebx
 3c2:	8d 45 f0             	lea    -0x10(%ebp),%eax
 3c5:	8d 55 e0             	lea    -0x20(%ebp),%edx
 3c8:	89 14 24             	mov    %edx,(%esp)
 3cb:	89 c1                	mov    %eax,%ecx
 3cd:	e8 00 00 00 00       	call   3d2 <Client()+0x40>
 3d2:	83 ec 04             	sub    $0x4,%esp
 3d5:	8d 45 f0             	lea    -0x10(%ebp),%eax
 3d8:	89 04 24             	mov    %eax,(%esp)
 3db:	89 d9                	mov    %ebx,%ecx
 3dd:	e8 b6 fd ff ff       	call   198 <LockedConcreteState::SetContext(std::shared_ptr<Context>)>
 3e2:	83 ec 04             	sub    $0x4,%esp
 3e5:	8d 45 f0             	lea    -0x10(%ebp),%eax
 3e8:	89 c1                	mov    %eax,%ecx
 3ea:	e8 00 00 00 00       	call   3ef <Client()+0x5d>
 3ef:	8d 45 e0             	lea    -0x20(%ebp),%eax
 3f2:	89 c1                	mov    %eax,%ecx
 3f4:	e8 00 00 00 00       	call   3f9 <Client()+0x67>
 3f9:	89 c1                	mov    %eax,%ecx
 3fb:	e8 2a fd ff ff       	call   12a <Context::Push()>
 400:	8d 45 e0             	lea    -0x20(%ebp),%eax
 403:	89 c1                	mov    %eax,%ecx
 405:	e8 00 00 00 00       	call   40a <Client()+0x78>
 40a:	89 c1                	mov    %eax,%ecx
 40c:	e8 37 fd ff ff       	call   148 <Context::Coin()>
 411:	8d 45 e0             	lea    -0x20(%ebp),%eax
 414:	89 c1                	mov    %eax,%ecx
 416:	e8 00 00 00 00       	call   41b <Client()+0x89>
 41b:	89 c1                	mov    %eax,%ecx
 41d:	e8 26 fd ff ff       	call   148 <Context::Coin()>
 422:	8d 45 e0             	lea    -0x20(%ebp),%eax
 425:	89 c1                	mov    %eax,%ecx
 427:	e8 00 00 00 00       	call   42c <Client()+0x9a>
 42c:	89 c1                	mov    %eax,%ecx
 42e:	e8 f7 fc ff ff       	call   12a <Context::Push()>
 433:	8d 45 e0             	lea    -0x20(%ebp),%eax
 436:	89 c1                	mov    %eax,%ecx
 438:	e8 00 00 00 00       	call   43d <Client()+0xab>
 43d:	89 c1                	mov    %eax,%ecx
 43f:	e8 e6 fc ff ff       	call   12a <Context::Push()>
 444:	8d 45 e0             	lea    -0x20(%ebp),%eax
 447:	89 c1                	mov    %eax,%ecx
 449:	e8 00 00 00 00       	call   44e <Client()+0xbc>
 44e:	8d 45 e8             	lea    -0x18(%ebp),%eax
 451:	89 c1                	mov    %eax,%ecx
 453:	e8 00 00 00 00       	call   458 <Client()+0xc6>
 458:	eb 24                	jmp    47e <Client()+0xec>
 45a:	89 c3                	mov    %eax,%ebx
 45c:	8d 45 e0             	lea    -0x20(%ebp),%eax
 45f:	89 c1                	mov    %eax,%ecx
 461:	e8 00 00 00 00       	call   466 <Client()+0xd4>
 466:	eb 02                	jmp    46a <Client()+0xd8>
 468:	89 c3                	mov    %eax,%ebx
 46a:	8d 45 e8             	lea    -0x18(%ebp),%eax
 46d:	89 c1                	mov    %eax,%ecx
 46f:	e8 00 00 00 00       	call   474 <Client()+0xe2>
 474:	89 d8                	mov    %ebx,%eax
 476:	89 04 24             	mov    %eax,(%esp)
 479:	e8 00 00 00 00       	call   47e <Client()+0xec>
 47e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 481:	c9                   	leave  
 482:	c3                   	ret    

00000483 <main>:
 483:	55                   	push   %ebp
 484:	89 e5                	mov    %esp,%ebp
 486:	83 e4 f0             	and    $0xfffffff0,%esp
 489:	e8 00 00 00 00       	call   48e <main+0xb>
 48e:	e8 ff fe ff ff       	call   392 <Client()>
 493:	b8 00 00 00 00       	mov    $0x0,%eax
 498:	c9                   	leave  
 499:	c3                   	ret    
 49a:	90                   	nop
 49b:	90                   	nop

Disassembly of section .text$_ZnwjPv:

00000000 <operator new(unsigned int, void*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 0c             	mov    0xc(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZdlPvS_:

00000000 <operator delete(void*, void*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	90                   	nop
   4:	5d                   	pop    %ebp
   5:	c3                   	ret    
   6:	90                   	nop
   7:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EED2Ev:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()+0x16>
  16:	90                   	nop
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI6IStateED1Ev:

00000000 <std::shared_ptr<IState>::~shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<IState>::~shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 08             	mov    0x8(%ebp),%eax
  16:	8d 50 04             	lea    0x4(%eax),%edx
  19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1c:	83 c0 04             	add    $0x4,%eax
  1f:	89 14 24             	mov    %edx,(%esp)
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2> const&)+0x29>
  29:	83 ec 04             	sub    $0x4,%esp
  2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2f:	c9                   	leave  
  30:	c2 04 00             	ret    $0x4
  33:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI6IStateEaSERKS1_:

00000000 <std::shared_ptr<IState>::operator=(std::shared_ptr<IState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::shared_ptr<IState>::operator=(std::shared_ptr<IState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1f:	c9                   	leave  
  20:	c2 04 00             	ret    $0x4
  23:	90                   	nop

Disassembly of section .text$_ZN6IStateC2Ev:

00000000 <IState::IState()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EED2Ev:

00000000 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()+0x16>
  16:	90                   	nop
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI7ContextED1Ev:

00000000 <std::shared_ptr<Context>::~shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<Context>::~shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_:

00000000 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 08             	mov    0x8(%ebp),%eax
  16:	8d 50 04             	lea    0x4(%eax),%edx
  19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1c:	83 c0 04             	add    $0x4,%eax
  1f:	89 14 24             	mov    %edx,(%esp)
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2> const&)+0x29>
  29:	83 ec 04             	sub    $0x4,%esp
  2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2f:	c9                   	leave  
  30:	c2 04 00             	ret    $0x4
  33:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI7ContextEaSERKS1_:

00000000 <std::shared_ptr<Context>::operator=(std::shared_ptr<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::shared_ptr<Context>::operator=(std::shared_ptr<Context> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1f:	c9                   	leave  
  20:	c2 04 00             	ret    $0x4
  23:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EED2Ev:

00000000 <std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()+0x16>
  16:	90                   	nop
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI21UnlockedConcreteStateED1Ev:

00000000 <std::shared_ptr<UnlockedConcreteState>::~shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<UnlockedConcreteState>::~shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_:

00000000 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::__shared_ptr(std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 04             	add    $0x4,%eax
  19:	8b 55 08             	mov    0x8(%ebp),%edx
  1c:	83 c2 04             	add    $0x4,%edx
  1f:	89 14 24             	mov    %edx,(%esp)
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::__shared_ptr(std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2> const&)+0x29>
  29:	83 ec 04             	sub    $0x4,%esp
  2c:	90                   	nop
  2d:	c9                   	leave  
  2e:	c2 04 00             	ret    $0x4
  31:	90                   	nop
  32:	90                   	nop
  33:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI7ContextEC1ERKS1_:

00000000 <std::shared_ptr<Context>::shared_ptr(std::shared_ptr<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::shared_ptr<Context>::shared_ptr(std::shared_ptr<Context> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EED2Ev:

00000000 <std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2>::~__shared_ptr()+0x16>
  16:	90                   	nop
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI19LockedConcreteStateED1Ev:

00000000 <std::shared_ptr<LockedConcreteState>::~shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<LockedConcreteState>::~shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI6IStateEC1Ev:

00000000 <std::shared_ptr<IState>::shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<IState>::shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev:

00000000 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	85 c0                	test   %eax,%eax
  10:	74 0c                	je     1e <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count()+0x1e>
  12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  15:	8b 00                	mov    (%eax),%eax
  17:	89 c1                	mov    %eax,%ecx
  19:	e8 00 00 00 00       	call   1e <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count()+0x1e>
  1e:	90                   	nop
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_:

00000000 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  11:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  14:	8b 00                	mov    (%eax),%eax
  16:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  19:	74 2d                	je     48 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x48>
  1b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1f:	74 0a                	je     2b <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x2b>
  21:	8b 45 f4             	mov    -0xc(%ebp),%eax
  24:	89 c1                	mov    %eax,%ecx
  26:	e8 00 00 00 00       	call   2b <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x2b>
  2b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  2e:	8b 00                	mov    (%eax),%eax
  30:	85 c0                	test   %eax,%eax
  32:	74 0c                	je     40 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x40>
  34:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  37:	8b 00                	mov    (%eax),%eax
  39:	89 c1                	mov    %eax,%ecx
  3b:	e8 00 00 00 00       	call   40 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::operator=(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x40>
  40:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  43:	8b 55 f4             	mov    -0xc(%ebp),%edx
  46:	89 10                	mov    %edx,(%eax)
  48:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4b:	c9                   	leave  
  4c:	c2 04 00             	ret    $0x4
  4f:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI6IStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:

00000000 <std::__shared_ptr_access<IState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<IState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI7ContextEC1Ev:

00000000 <std::shared_ptr<Context>::shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::shared_ptr<Context>::shared_ptr()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_:

00000000 <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8d 45 f7             	lea    -0x9(%ebp),%eax
   a:	89 c1                	mov    %eax,%ecx
   c:	e8 00 00 00 00       	call   11 <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x11>
  11:	8b 45 08             	mov    0x8(%ebp),%eax
  14:	8d 55 f7             	lea    -0x9(%ebp),%edx
  17:	89 54 24 04          	mov    %edx,0x4(%esp)
  1b:	89 04 24             	mov    %eax,(%esp)
  1e:	e8 00 00 00 00       	call   23 <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x23>
  23:	8d 45 f7             	lea    -0x9(%ebp),%eax
  26:	89 c1                	mov    %eax,%ecx
  28:	e8 00 00 00 00       	call   2d <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x2d>
  2d:	eb 16                	jmp    45 <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x45>
  2f:	89 c3                	mov    %eax,%ebx
  31:	8d 45 f7             	lea    -0x9(%ebp),%eax
  34:	89 c1                	mov    %eax,%ecx
  36:	e8 00 00 00 00       	call   3b <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x3b>
  3b:	89 d8                	mov    %ebx,%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 00 00 00 00       	call   45 <_ZSt11make_sharedI21UnlockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x45>
  45:	8b 45 08             	mov    0x8(%ebp),%eax
  48:	83 c4 24             	add    $0x24,%esp
  4b:	5b                   	pop    %ebx
  4c:	5d                   	pop    %ebp
  4d:	c3                   	ret    
  4e:	90                   	nop
  4f:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:

00000000 <std::__shared_ptr_access<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_:

00000000 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	8b 00                	mov    (%eax),%eax
  18:	85 c0                	test   %eax,%eax
  1a:	74 0c                	je     28 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x28>
  1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1f:	8b 00                	mov    (%eax),%eax
  21:	89 c1                	mov    %eax,%ecx
  23:	e8 00 00 00 00       	call   28 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(std::__shared_count<(__gnu_cxx::_Lock_policy)2> const&)+0x28>
  28:	90                   	nop
  29:	c9                   	leave  
  2a:	c2 04 00             	ret    $0x4
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI7ContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:

00000000 <std::__shared_ptr_access<Context, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<Context, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI6IStateEC1I21UnlockedConcreteStatevEERKS_IT_E:

00000000 <std::shared_ptr<IState>::shared_ptr<UnlockedConcreteState, void>(std::shared_ptr<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::shared_ptr<IState>::shared_ptr<UnlockedConcreteState, void>(std::shared_ptr<UnlockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_:

00000000 <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8d 45 f7             	lea    -0x9(%ebp),%eax
   a:	89 c1                	mov    %eax,%ecx
   c:	e8 00 00 00 00       	call   11 <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x11>
  11:	8b 45 08             	mov    0x8(%ebp),%eax
  14:	8d 55 f7             	lea    -0x9(%ebp),%edx
  17:	89 54 24 04          	mov    %edx,0x4(%esp)
  1b:	89 04 24             	mov    %eax,(%esp)
  1e:	e8 00 00 00 00       	call   23 <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x23>
  23:	8d 45 f7             	lea    -0x9(%ebp),%eax
  26:	89 c1                	mov    %eax,%ecx
  28:	e8 00 00 00 00       	call   2d <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x2d>
  2d:	eb 16                	jmp    45 <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x45>
  2f:	89 c3                	mov    %eax,%ebx
  31:	8d 45 f7             	lea    -0x9(%ebp),%eax
  34:	89 c1                	mov    %eax,%ecx
  36:	e8 00 00 00 00       	call   3b <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x3b>
  3b:	89 d8                	mov    %ebx,%eax
  3d:	89 04 24             	mov    %eax,(%esp)
  40:	e8 00 00 00 00       	call   45 <_ZSt11make_sharedI19LockedConcreteStateJEESt10shared_ptrIT_EDpOT0_+0x45>
  45:	8b 45 08             	mov    0x8(%ebp),%eax
  48:	83 c4 24             	add    $0x24,%esp
  4b:	5b                   	pop    %ebx
  4c:	5d                   	pop    %ebp
  4d:	c3                   	ret    
  4e:	90                   	nop
  4f:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:

00000000 <std::__shared_ptr_access<LockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<LockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::operator->() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt10shared_ptrI6IStateEC1I19LockedConcreteStatevEERKS_IT_E:

00000000 <std::shared_ptr<IState>::shared_ptr<LockedConcreteState, void>(std::shared_ptr<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::shared_ptr<IState>::shared_ptr<LockedConcreteState, void>(std::shared_ptr<LockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_:

00000000 <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8b 45 0c             	mov    0xc(%ebp),%eax
   a:	89 04 24             	mov    %eax,(%esp)
   d:	e8 00 00 00 00       	call   12 <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x12>
  12:	89 c3                	mov    %eax,%ebx
  14:	8d 45 f7             	lea    -0x9(%ebp),%eax
  17:	89 c1                	mov    %eax,%ecx
  19:	e8 00 00 00 00       	call   1e <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x1e>
  1e:	8b 45 08             	mov    0x8(%ebp),%eax
  21:	89 5c 24 08          	mov    %ebx,0x8(%esp)
  25:	8d 55 f7             	lea    -0x9(%ebp),%edx
  28:	89 54 24 04          	mov    %edx,0x4(%esp)
  2c:	89 04 24             	mov    %eax,(%esp)
  2f:	e8 00 00 00 00       	call   34 <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x34>
  34:	8d 45 f7             	lea    -0x9(%ebp),%eax
  37:	89 c1                	mov    %eax,%ecx
  39:	e8 00 00 00 00       	call   3e <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x3e>
  3e:	eb 16                	jmp    56 <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x56>
  40:	89 c3                	mov    %eax,%ebx
  42:	8d 45 f7             	lea    -0x9(%ebp),%eax
  45:	89 c1                	mov    %eax,%ecx
  47:	e8 00 00 00 00       	call   4c <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x4c>
  4c:	89 d8                	mov    %ebx,%eax
  4e:	89 04 24             	mov    %eax,(%esp)
  51:	e8 00 00 00 00       	call   56 <_ZSt11make_sharedI7ContextJRSt10shared_ptrI19LockedConcreteStateEEES1_IT_EDpOT0_+0x56>
  56:	8b 45 08             	mov    0x8(%ebp),%eax
  59:	83 c4 24             	add    $0x24,%esp
  5c:	5b                   	pop    %ebx
  5d:	5d                   	pop    %ebp
  5e:	c3                   	ret    
  5f:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EEC2Ev:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  15:	83 c0 04             	add    $0x4,%eax
  18:	89 c1                	mov    %eax,%ecx
  1a:	e8 00 00 00 00       	call   1f <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr()+0x1f>
  1f:	90                   	nop
  20:	c9                   	leave  
  21:	c3                   	ret    
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:

00000000 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  16:	ff 
  17:	89 04 24             	mov    %eax,(%esp)
  1a:	e8 61 00 00 00       	call   80 <__gnu_cxx::__exchange_and_add_dispatch(int*, int)+0x1f>
  1f:	83 f8 01             	cmp    $0x1,%eax
  22:	0f 94 c0             	sete   %al
  25:	84 c0                	test   %al,%al
  27:	74 42                	je     6b <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()+0x6b>
  29:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2c:	8b 00                	mov    (%eax),%eax
  2e:	83 c0 08             	add    $0x8,%eax
  31:	8b 00                	mov    (%eax),%eax
  33:	8b 55 f4             	mov    -0xc(%ebp),%edx
  36:	89 d1                	mov    %edx,%ecx
  38:	ff d0                	call   *%eax
  3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3d:	83 c0 08             	add    $0x8,%eax
  40:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  47:	ff 
  48:	89 04 24             	mov    %eax,(%esp)
  4b:	e8 61 00 00 00       	call   b1 <__gnu_cxx::__atomic_add_dispatch(int*, int)+0x13>
  50:	83 f8 01             	cmp    $0x1,%eax
  53:	0f 94 c0             	sete   %al
  56:	84 c0                	test   %al,%al
  58:	74 11                	je     6b <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_release()+0x6b>
  5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  5d:	8b 00                	mov    (%eax),%eax
  5f:	83 c0 0c             	add    $0xc,%eax
  62:	8b 00                	mov    (%eax),%eax
  64:	8b 55 f4             	mov    -0xc(%ebp),%edx
  67:	89 d1                	mov    %edx,%ecx
  69:	ff d0                	call   *%eax
  6b:	90                   	nop
  6c:	c9                   	leave  
  6d:	c3                   	ret    
  6e:	90                   	nop
  6f:	90                   	nop

Disassembly of section .text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv:

00000000 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_add_ref_copy()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 0c             	sub    $0xc,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  16:	00 
  17:	89 04 24             	mov    %eax,(%esp)
  1a:	e8 9e 00 00 00       	call   bd <__gnu_cxx::__atomic_add_dispatch(int*, int)+0x1f>
  1f:	90                   	nop
  20:	c9                   	leave  
  21:	c3                   	ret    
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI6IStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:

00000000 <std::__shared_ptr_access<IState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<IState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2Ev:

00000000 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::__shared_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  15:	83 c0 04             	add    $0x4,%eax
  18:	89 c1                	mov    %eax,%ecx
  1a:	e8 00 00 00 00       	call   1f <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::__shared_ptr()+0x1f>
  1f:	90                   	nop
  20:	c9                   	leave  
  21:	c3                   	ret    
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSaI21UnlockedConcreteStateEC1Ev:

00000000 <std::allocator<UnlockedConcreteState>::allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<UnlockedConcreteState>::allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI21UnlockedConcreteStateED2Ev:

00000000 <std::allocator<UnlockedConcreteState>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<UnlockedConcreteState>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI21UnlockedConcreteStateED1Ev:

00000000 <std::allocator<UnlockedConcreteState>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<UnlockedConcreteState>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt15allocate_sharedI21UnlockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_:

00000000 <_ZSt15allocate_sharedI21UnlockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	88 14 24             	mov    %dl,(%esp)
  10:	8b 4d 08             	mov    0x8(%ebp),%ecx
  13:	e8 00 00 00 00       	call   18 <_ZSt15allocate_sharedI21UnlockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_+0x18>
  18:	83 ec 08             	sub    $0x8,%esp
  1b:	8b 45 08             	mov    0x8(%ebp),%eax
  1e:	c9                   	leave  
  1f:	c3                   	ret    

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:

00000000 <std::__shared_ptr_access<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI7ContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:

00000000 <std::__shared_ptr_access<Context, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<Context, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EEC2I21UnlockedConcreteStatevEERKS_IT_LS2_2EE:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr<UnlockedConcreteState, void>(std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 04             	add    $0x4,%eax
  19:	8b 55 08             	mov    0x8(%ebp),%edx
  1c:	83 c2 04             	add    $0x4,%edx
  1f:	89 14 24             	mov    %edx,(%esp)
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr<UnlockedConcreteState, void>(std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2> const&)+0x29>
  29:	83 ec 04             	sub    $0x4,%esp
  2c:	90                   	nop
  2d:	c9                   	leave  
  2e:	c2 04 00             	ret    $0x4
  31:	90                   	nop
  32:	90                   	nop
  33:	90                   	nop

Disassembly of section .text$_ZNSaI19LockedConcreteStateEC1Ev:

00000000 <std::allocator<LockedConcreteState>::allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<LockedConcreteState>::allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI19LockedConcreteStateED2Ev:

00000000 <std::allocator<LockedConcreteState>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<LockedConcreteState>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI19LockedConcreteStateED1Ev:

00000000 <std::allocator<LockedConcreteState>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<LockedConcreteState>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt15allocate_sharedI19LockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_:

00000000 <_ZSt15allocate_sharedI19LockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	88 14 24             	mov    %dl,(%esp)
  10:	8b 4d 08             	mov    0x8(%ebp),%ecx
  13:	e8 00 00 00 00       	call   18 <_ZSt15allocate_sharedI19LockedConcreteStateSaIS0_EJEESt10shared_ptrIT_ERKT0_DpOT1_+0x18>
  18:	83 ec 08             	sub    $0x8,%esp
  1b:	8b 45 08             	mov    0x8(%ebp),%eax
  1e:	c9                   	leave  
  1f:	c3                   	ret    

Disassembly of section .text$_ZNKSt19__shared_ptr_accessI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:

00000000 <std::__shared_ptr_access<LockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::__shared_ptr_access<LockedConcreteState, (__gnu_cxx::_Lock_policy)2, false, false>::_M_get() const+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EEC2I19LockedConcreteStatevEERKS_IT_LS2_2EE:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr<LockedConcreteState, void>(std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	8b 10                	mov    (%eax),%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 04             	add    $0x4,%eax
  19:	8b 55 08             	mov    0x8(%ebp),%edx
  1c:	83 c2 04             	add    $0x4,%edx
  1f:	89 14 24             	mov    %edx,(%esp)
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::__shared_ptr<LockedConcreteState, void>(std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2> const&)+0x29>
  29:	83 ec 04             	sub    $0x4,%esp
  2c:	90                   	nop
  2d:	c9                   	leave  
  2e:	c2 04 00             	ret    $0x4
  31:	90                   	nop
  32:	90                   	nop
  33:	90                   	nop

Disassembly of section .text$_ZNSaI7ContextEC1Ev:

00000000 <std::allocator<Context>::allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<Context>::allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI7ContextED2Ev:

00000000 <std::allocator<Context>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<Context>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSaI7ContextED1Ev:

00000000 <std::allocator<Context>::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<Context>::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt7forwardIRSt10shared_ptrI19LockedConcreteStateEEOT_RNSt16remove_referenceIS4_E4typeE:

00000000 <std::shared_ptr<LockedConcreteState>&&& std::forward<std::shared_ptr<LockedConcreteState>&>(std::remove_reference<std::shared_ptr<LockedConcreteState>&>::type&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZSt15allocate_sharedI7ContextSaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEES2_IT_ERKT0_DpOT1_:

00000000 <_ZSt15allocate_sharedI7ContextSaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEES2_IT_ERKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8b 45 10             	mov    0x10(%ebp),%eax
   a:	89 04 24             	mov    %eax,(%esp)
   d:	e8 00 00 00 00       	call   12 <_ZSt15allocate_sharedI7ContextSaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEES2_IT_ERKT0_DpOT1_+0x12>
  12:	89 44 24 08          	mov    %eax,0x8(%esp)
  16:	8b 45 0c             	mov    0xc(%ebp),%eax
  19:	89 44 24 04          	mov    %eax,0x4(%esp)
  1d:	88 1c 24             	mov    %bl,(%esp)
  20:	8b 4d 08             	mov    0x8(%ebp),%ecx
  23:	e8 00 00 00 00       	call   28 <_ZSt15allocate_sharedI7ContextSaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEES2_IT_ERKT0_DpOT1_+0x28>
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	8b 45 08             	mov    0x8(%ebp),%eax
  2e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  31:	c9                   	leave  
  32:	c3                   	ret    
  33:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev:

00000000 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  12:	90                   	nop
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:

00000000 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   d:	74 11                	je     20 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x20>
   f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  12:	8b 00                	mov    (%eax),%eax
  14:	83 c0 04             	add    $0x4,%eax
  17:	8b 00                	mov    (%eax),%eax
  19:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1c:	89 d1                	mov    %edx,%ecx
  1e:	ff d0                	call   *%eax
  20:	90                   	nop
  21:	c9                   	leave  
  22:	c3                   	ret    
  23:	90                   	nop

Disassembly of section .text$_ZNKSt12__shared_ptrI6IStateLN9__gnu_cxx12_Lock_policyE2EE3getEv:

00000000 <std::__shared_ptr<IState, (__gnu_cxx::_Lock_policy)2>::get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateEC2Ev:

00000000 <__gnu_cxx::new_allocator<UnlockedConcreteState>::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateED2Ev:

00000000 <__gnu_cxx::new_allocator<UnlockedConcreteState>::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt10shared_ptrI21UnlockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt10shared_ptrI21UnlockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   d:	8b 55 0c             	mov    0xc(%ebp),%edx
  10:	89 54 24 04          	mov    %edx,0x4(%esp)
  14:	88 1c 24             	mov    %bl,(%esp)
  17:	89 c1                	mov    %eax,%ecx
  19:	e8 00 00 00 00       	call   1e <_ZNSt10shared_ptrI21UnlockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x1e>
  1e:	83 ec 08             	sub    $0x8,%esp
  21:	90                   	nop
  22:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  25:	c9                   	leave  
  26:	c2 08 00             	ret    $0x8
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNKSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EE3getEv:

00000000 <std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2>::get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZNKSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EE3getEv:

00000000 <std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateEC2Ev:

00000000 <__gnu_cxx::new_allocator<LockedConcreteState>::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateED2Ev:

00000000 <__gnu_cxx::new_allocator<LockedConcreteState>::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt10shared_ptrI19LockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt10shared_ptrI19LockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   d:	8b 55 0c             	mov    0xc(%ebp),%edx
  10:	89 54 24 04          	mov    %edx,0x4(%esp)
  14:	88 1c 24             	mov    %bl,(%esp)
  17:	89 c1                	mov    %eax,%ecx
  19:	e8 00 00 00 00       	call   1e <_ZNSt10shared_ptrI19LockedConcreteStateEC1ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x1e>
  1e:	83 ec 08             	sub    $0x8,%esp
  21:	90                   	nop
  22:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  25:	c9                   	leave  
  26:	c2 08 00             	ret    $0x8
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNKSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EE3getEv:

00000000 <std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2>::get() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI7ContextEC2Ev:

00000000 <__gnu_cxx::new_allocator<Context>::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI7ContextED2Ev:

00000000 <__gnu_cxx::new_allocator<Context>::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt10shared_ptrI7ContextEC1ISaIS0_EJRS_I19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt10shared_ptrI7ContextEC1ISaIS0_EJRS_I19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 5d f4             	mov    -0xc(%ebp),%ebx
   d:	8b 45 10             	mov    0x10(%ebp),%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	e8 00 00 00 00       	call   18 <_ZNSt10shared_ptrI7ContextEC1ISaIS0_EJRS_I19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x18>
  18:	89 44 24 08          	mov    %eax,0x8(%esp)
  1c:	8b 45 0c             	mov    0xc(%ebp),%eax
  1f:	89 44 24 04          	mov    %eax,0x4(%esp)
  23:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  27:	88 04 24             	mov    %al,(%esp)
  2a:	89 d9                	mov    %ebx,%ecx
  2c:	e8 00 00 00 00       	call   31 <_ZNSt10shared_ptrI7ContextEC1ISaIS0_EJRS_I19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x31>
  31:	83 ec 0c             	sub    $0xc,%esp
  34:	90                   	nop
  35:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  38:	c9                   	leave  
  39:	c2 0c 00             	ret    $0xc

Disassembly of section .text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:

00000000 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::~_Sp_counted_base()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  16:	8d 50 04             	lea    0x4(%eax),%edx
  19:	8b 45 0c             	mov    0xc(%ebp),%eax
  1c:	89 44 24 08          	mov    %eax,0x8(%esp)
  20:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  27:	00 
  28:	88 1c 24             	mov    %bl,(%esp)
  2b:	89 d1                	mov    %edx,%ecx
  2d:	e8 00 00 00 00       	call   32 <_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x32>
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  38:	83 c0 04             	add    $0x4,%eax
  3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  42:	89 c1                	mov    %eax,%ecx
  44:	e8 00 00 00 00       	call   49 <_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x49>
  49:	83 ec 04             	sub    $0x4,%esp
  4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  52:	8b 55 f4             	mov    -0xc(%ebp),%edx
  55:	89 10                	mov    %edx,(%eax)
  57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  5a:	8b 10                	mov    (%eax),%edx
  5c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  5f:	89 14 24             	mov    %edx,(%esp)
  62:	89 c1                	mov    %eax,%ecx
  64:	e8 00 00 00 00       	call   69 <_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x69>
  69:	83 ec 04             	sub    $0x4,%esp
  6c:	90                   	nop
  6d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  70:	c9                   	leave  
  71:	c2 08 00             	ret    $0x8

Disassembly of section .text$_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  16:	8d 50 04             	lea    0x4(%eax),%edx
  19:	8b 45 0c             	mov    0xc(%ebp),%eax
  1c:	89 44 24 08          	mov    %eax,0x8(%esp)
  20:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  27:	00 
  28:	88 1c 24             	mov    %bl,(%esp)
  2b:	89 d1                	mov    %edx,%ecx
  2d:	e8 00 00 00 00       	call   32 <_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x32>
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  38:	83 c0 04             	add    $0x4,%eax
  3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  42:	89 c1                	mov    %eax,%ecx
  44:	e8 00 00 00 00       	call   49 <_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x49>
  49:	83 ec 04             	sub    $0x4,%esp
  4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  52:	8b 55 f4             	mov    -0xc(%ebp),%edx
  55:	89 10                	mov    %edx,(%eax)
  57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  5a:	8b 10                	mov    (%eax),%edx
  5c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  5f:	89 14 24             	mov    %edx,(%esp)
  62:	89 c1                	mov    %eax,%ecx
  64:	e8 00 00 00 00       	call   69 <_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x69>
  69:	83 ec 04             	sub    $0x4,%esp
  6c:	90                   	nop
  6d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  70:	c9                   	leave  
  71:	c2 08 00             	ret    $0x8

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_:

00000000 <_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  16:	8d 58 04             	lea    0x4(%eax),%ebx
  19:	8b 45 10             	mov    0x10(%ebp),%eax
  1c:	89 04 24             	mov    %eax,(%esp)
  1f:	e8 00 00 00 00       	call   24 <_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x24>
  24:	89 44 24 0c          	mov    %eax,0xc(%esp)
  28:	8b 45 0c             	mov    0xc(%ebp),%eax
  2b:	89 44 24 08          	mov    %eax,0x8(%esp)
  2f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  36:	00 
  37:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  3b:	88 04 24             	mov    %al,(%esp)
  3e:	89 d9                	mov    %ebx,%ecx
  40:	e8 00 00 00 00       	call   45 <_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x45>
  45:	83 ec 10             	sub    $0x10,%esp
  48:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4b:	83 c0 04             	add    $0x4,%eax
  4e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  55:	89 c1                	mov    %eax,%ecx
  57:	e8 00 00 00 00       	call   5c <_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x5c>
  5c:	83 ec 04             	sub    $0x4,%esp
  5f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  62:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  65:	8b 55 f4             	mov    -0xc(%ebp),%edx
  68:	89 10                	mov    %edx,(%eax)
  6a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  6d:	8b 10                	mov    (%eax),%edx
  6f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  72:	89 14 24             	mov    %edx,(%esp)
  75:	89 c1                	mov    %eax,%ecx
  77:	e8 00 00 00 00       	call   7c <_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagRKT_DpOT0_+0x7c>
  7c:	83 ec 04             	sub    $0x4,%esp
  7f:	90                   	nop
  80:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  83:	c9                   	leave  
  84:	c2 0c 00             	ret    $0xc
  87:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_:

00000000 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 3c             	sub    $0x3c,%esp
   9:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  15:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  18:	8b 55 10             	mov    0x10(%ebp),%edx
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 d8             	lea    -0x28(%ebp),%eax
  2b:	8d 55 e2             	lea    -0x1e(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	89 04 24             	mov    %eax,(%esp)
  35:	e8 00 00 00 00       	call   3a <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x3a>
  3a:	8d 45 d8             	lea    -0x28(%ebp),%eax
  3d:	89 c1                	mov    %eax,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x44>
  44:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  47:	8b 45 10             	mov    0x10(%ebp),%eax
  4a:	89 04 24             	mov    %eax,(%esp)
  4d:	e8 00 00 00 00       	call   52 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x52>
  52:	89 c2                	mov    %eax,%edx
  54:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  57:	89 14 24             	mov    %edx,(%esp)
  5a:	89 c1                	mov    %eax,%ecx
  5c:	e8 00 00 00 00       	call   61 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x61>
  61:	83 ec 04             	sub    $0x4,%esp
  64:	8d 7d e3             	lea    -0x1d(%ebp),%edi
  67:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  6a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  6e:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  75:	e8 00 00 00 00       	call   7a <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x7a>
  7a:	89 c6                	mov    %eax,%esi
  7c:	89 3c 24             	mov    %edi,(%esp)
  7f:	89 f1                	mov    %esi,%ecx
  81:	e8 00 00 00 00       	call   86 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x86>
  86:	83 ec 04             	sub    $0x4,%esp
  89:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  8c:	89 c1                	mov    %eax,%ecx
  8e:	e8 00 00 00 00       	call   93 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x93>
  93:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  96:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  99:	89 10                	mov    %edx,(%eax)
  9b:	8d 45 d8             	lea    -0x28(%ebp),%eax
  9e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a5:	89 c1                	mov    %eax,%ecx
  a7:	e8 00 00 00 00       	call   ac <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xac>
  ac:	83 ec 04             	sub    $0x4,%esp
  af:	8d 45 d8             	lea    -0x28(%ebp),%eax
  b2:	89 c1                	mov    %eax,%ecx
  b4:	e8 00 00 00 00       	call   b9 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xb9>
  b9:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  bc:	89 c1                	mov    %eax,%ecx
  be:	e8 00 00 00 00       	call   c3 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xc3>
  c3:	eb 3c                	jmp    101 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x101>
  c5:	89 c7                	mov    %eax,%edi
  c7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  cb:	89 34 24             	mov    %esi,(%esp)
  ce:	e8 00 00 00 00       	call   d3 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xd3>
  d3:	89 fb                	mov    %edi,%ebx
  d5:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  d8:	89 c1                	mov    %eax,%ecx
  da:	e8 00 00 00 00       	call   df <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xdf>
  df:	8d 45 d8             	lea    -0x28(%ebp),%eax
  e2:	89 c1                	mov    %eax,%ecx
  e4:	e8 00 00 00 00       	call   e9 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xe9>
  e9:	eb 02                	jmp    ed <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xed>
  eb:	89 c3                	mov    %eax,%ebx
  ed:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  f0:	89 c1                	mov    %eax,%ecx
  f2:	e8 00 00 00 00       	call   f7 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xf7>
  f7:	89 d8                	mov    %ebx,%eax
  f9:	89 04 24             	mov    %eax,(%esp)
  fc:	e8 00 00 00 00       	call   101 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I21UnlockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x101>
 101:	8d 65 f4             	lea    -0xc(%ebp),%esp
 104:	5b                   	pop    %ebx
 105:	5e                   	pop    %esi
 106:	5f                   	pop    %edi
 107:	5d                   	pop    %ebp
 108:	c2 0c 00             	ret    $0xc
 10b:	90                   	nop

Disassembly of section .text$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:

00000000 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&) const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 00                	mov    (%eax),%eax
   e:	85 c0                	test   %eax,%eax
  10:	74 20                	je     32 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&) const+0x32>
  12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  15:	8b 10                	mov    (%eax),%edx
  17:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1a:	8b 00                	mov    (%eax),%eax
  1c:	8b 00                	mov    (%eax),%eax
  1e:	83 c0 10             	add    $0x10,%eax
  21:	8b 00                	mov    (%eax),%eax
  23:	8b 4d 08             	mov    0x8(%ebp),%ecx
  26:	89 0c 24             	mov    %ecx,(%esp)
  29:	89 d1                	mov    %edx,%ecx
  2b:	ff d0                	call   *%eax
  2d:	83 ec 04             	sub    $0x4,%esp
  30:	eb 05                	jmp    37 <std::__shared_count<(__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&) const+0x37>
  32:	b8 00 00 00 00       	mov    $0x0,%eax
  37:	c9                   	leave  
  38:	c2 04 00             	ret    $0x4
  3b:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI21UnlockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:

00000000 <std::enable_if<!(std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2>::__has_esft_base<UnlockedConcreteState, void>::value), void>::type std::__shared_ptr<UnlockedConcreteState, (__gnu_cxx::_Lock_policy)2>::_M_enable_shared_from_this_with<UnlockedConcreteState, UnlockedConcreteState>(UnlockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_:

00000000 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 3c             	sub    $0x3c,%esp
   9:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  15:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  18:	8b 55 10             	mov    0x10(%ebp),%edx
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 d8             	lea    -0x28(%ebp),%eax
  2b:	8d 55 e2             	lea    -0x1e(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	89 04 24             	mov    %eax,(%esp)
  35:	e8 00 00 00 00       	call   3a <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x3a>
  3a:	8d 45 d8             	lea    -0x28(%ebp),%eax
  3d:	89 c1                	mov    %eax,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x44>
  44:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  47:	8b 45 10             	mov    0x10(%ebp),%eax
  4a:	89 04 24             	mov    %eax,(%esp)
  4d:	e8 00 00 00 00       	call   52 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x52>
  52:	89 c2                	mov    %eax,%edx
  54:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  57:	89 14 24             	mov    %edx,(%esp)
  5a:	89 c1                	mov    %eax,%ecx
  5c:	e8 00 00 00 00       	call   61 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x61>
  61:	83 ec 04             	sub    $0x4,%esp
  64:	8d 7d e3             	lea    -0x1d(%ebp),%edi
  67:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  6a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  6e:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  75:	e8 00 00 00 00       	call   7a <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x7a>
  7a:	89 c6                	mov    %eax,%esi
  7c:	89 3c 24             	mov    %edi,(%esp)
  7f:	89 f1                	mov    %esi,%ecx
  81:	e8 00 00 00 00       	call   86 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x86>
  86:	83 ec 04             	sub    $0x4,%esp
  89:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  8c:	89 c1                	mov    %eax,%ecx
  8e:	e8 00 00 00 00       	call   93 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x93>
  93:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  96:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  99:	89 10                	mov    %edx,(%eax)
  9b:	8d 45 d8             	lea    -0x28(%ebp),%eax
  9e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a5:	89 c1                	mov    %eax,%ecx
  a7:	e8 00 00 00 00       	call   ac <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xac>
  ac:	83 ec 04             	sub    $0x4,%esp
  af:	8d 45 d8             	lea    -0x28(%ebp),%eax
  b2:	89 c1                	mov    %eax,%ecx
  b4:	e8 00 00 00 00       	call   b9 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xb9>
  b9:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  bc:	89 c1                	mov    %eax,%ecx
  be:	e8 00 00 00 00       	call   c3 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xc3>
  c3:	eb 3c                	jmp    101 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x101>
  c5:	89 c7                	mov    %eax,%edi
  c7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  cb:	89 34 24             	mov    %esi,(%esp)
  ce:	e8 00 00 00 00       	call   d3 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xd3>
  d3:	89 fb                	mov    %edi,%ebx
  d5:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  d8:	89 c1                	mov    %eax,%ecx
  da:	e8 00 00 00 00       	call   df <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xdf>
  df:	8d 45 d8             	lea    -0x28(%ebp),%eax
  e2:	89 c1                	mov    %eax,%ecx
  e4:	e8 00 00 00 00       	call   e9 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xe9>
  e9:	eb 02                	jmp    ed <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xed>
  eb:	89 c3                	mov    %eax,%ebx
  ed:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  f0:	89 c1                	mov    %eax,%ecx
  f2:	e8 00 00 00 00       	call   f7 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xf7>
  f7:	89 d8                	mov    %ebx,%eax
  f9:	89 04 24             	mov    %eax,(%esp)
  fc:	e8 00 00 00 00       	call   101 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I19LockedConcreteStateSaIS4_EJEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x101>
 101:	8d 65 f4             	lea    -0xc(%ebp),%esp
 104:	5b                   	pop    %ebx
 105:	5e                   	pop    %esi
 106:	5f                   	pop    %edi
 107:	5d                   	pop    %ebp
 108:	c2 0c 00             	ret    $0xc
 10b:	90                   	nop

Disassembly of section .text$_ZNSt12__shared_ptrI19LockedConcreteStateLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:

00000000 <std::enable_if<!(std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2>::__has_esft_base<LockedConcreteState, void>::value), void>::type std::__shared_ptr<LockedConcreteState, (__gnu_cxx::_Lock_policy)2>::_M_enable_shared_from_this_with<LockedConcreteState, LockedConcreteState>(LockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_:

00000000 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	83 ec 3c             	sub    $0x3c,%esp
   9:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  15:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  18:	8b 55 10             	mov    0x10(%ebp),%edx
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 d8             	lea    -0x28(%ebp),%eax
  2b:	8d 55 e2             	lea    -0x1e(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	89 04 24             	mov    %eax,(%esp)
  35:	e8 00 00 00 00       	call   3a <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x3a>
  3a:	8d 45 d8             	lea    -0x28(%ebp),%eax
  3d:	89 c1                	mov    %eax,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x44>
  44:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  47:	8b 45 10             	mov    0x10(%ebp),%eax
  4a:	89 04 24             	mov    %eax,(%esp)
  4d:	e8 00 00 00 00       	call   52 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x52>
  52:	89 c2                	mov    %eax,%edx
  54:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  57:	89 14 24             	mov    %edx,(%esp)
  5a:	89 c1                	mov    %eax,%ecx
  5c:	e8 00 00 00 00       	call   61 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x61>
  61:	83 ec 04             	sub    $0x4,%esp
  64:	8d 7d e3             	lea    -0x1d(%ebp),%edi
  67:	8b 45 14             	mov    0x14(%ebp),%eax
  6a:	89 04 24             	mov    %eax,(%esp)
  6d:	e8 00 00 00 00       	call   72 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x72>
  72:	89 45 d0             	mov    %eax,-0x30(%ebp)
  75:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  78:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  7c:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
  83:	e8 00 00 00 00       	call   88 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x88>
  88:	89 c6                	mov    %eax,%esi
  8a:	8b 45 d0             	mov    -0x30(%ebp),%eax
  8d:	89 44 24 04          	mov    %eax,0x4(%esp)
  91:	89 3c 24             	mov    %edi,(%esp)
  94:	89 f1                	mov    %esi,%ecx
  96:	e8 00 00 00 00       	call   9b <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x9b>
  9b:	83 ec 08             	sub    $0x8,%esp
  9e:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  a1:	89 c1                	mov    %eax,%ecx
  a3:	e8 00 00 00 00       	call   a8 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xa8>
  a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  ab:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  ae:	89 10                	mov    %edx,(%eax)
  b0:	8d 45 d8             	lea    -0x28(%ebp),%eax
  b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ba:	89 c1                	mov    %eax,%ecx
  bc:	e8 00 00 00 00       	call   c1 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xc1>
  c1:	83 ec 04             	sub    $0x4,%esp
  c4:	8d 45 d8             	lea    -0x28(%ebp),%eax
  c7:	89 c1                	mov    %eax,%ecx
  c9:	e8 00 00 00 00       	call   ce <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xce>
  ce:	8d 45 e2             	lea    -0x1e(%ebp),%eax
  d1:	89 c1                	mov    %eax,%ecx
  d3:	e8 00 00 00 00       	call   d8 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xd8>
  d8:	eb 3c                	jmp    116 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x116>
  da:	89 c7                	mov    %eax,%edi
  dc:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  e0:	89 34 24             	mov    %esi,(%esp)
  e3:	e8 00 00 00 00       	call   e8 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xe8>
  e8:	89 fb                	mov    %edi,%ebx
  ea:	8d 45 e3             	lea    -0x1d(%ebp),%eax
  ed:	89 c1                	mov    %eax,%ecx
  ef:	e8 00 00 00 00       	call   f4 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xf4>
  f4:	8d 45 d8             	lea    -0x28(%ebp),%eax
  f7:	89 c1                	mov    %eax,%ecx
  f9:	e8 00 00 00 00       	call   fe <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0xfe>
  fe:	eb 02                	jmp    102 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x102>
 100:	89 c3                	mov    %eax,%ebx
 102:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 105:	89 c1                	mov    %eax,%ecx
 107:	e8 00 00 00 00       	call   10c <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x10c>
 10c:	89 d8                	mov    %ebx,%eax
 10e:	89 04 24             	mov    %eax,(%esp)
 111:	e8 00 00 00 00       	call   116 <_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I7ContextSaIS4_EJRSt10shared_ptrI19LockedConcreteStateEEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_+0x116>
 116:	8d 65 f4             	lea    -0xc(%ebp),%esp
 119:	5b                   	pop    %ebx
 11a:	5e                   	pop    %esi
 11b:	5f                   	pop    %edi
 11c:	5d                   	pop    %ebp
 11d:	c2 10 00             	ret    $0x10

Disassembly of section .text$_ZNSt12__shared_ptrI7ContextLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:

00000000 <std::enable_if<!(std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::__has_esft_base<Context, void>::value), void>::type std::__shared_ptr<Context, (__gnu_cxx::_Lock_policy)2>::_M_enable_shared_from_this_with<Context, Context>(Context*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocator<UnlockedConcreteState>(std::allocator<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocator<UnlockedConcreteState>(std::allocator<UnlockedConcreteState> const&)+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	e8 00 00 00 00       	call   19 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)+0x19>
  19:	89 44 24 04          	mov    %eax,0x4(%esp)
  1d:	8b 45 0c             	mov    0xc(%ebp),%eax
  20:	89 04 24             	mov    %eax,(%esp)
  23:	8b 4d 08             	mov    0x8(%ebp),%ecx
  26:	e8 00 00 00 00       	call   2b <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)+0x2b>
  2b:	83 ec 08             	sub    $0x8,%esp
  2e:	8b 45 08             	mov    0x8(%ebp),%eax
  31:	c9                   	leave  
  32:	c3                   	ret    
  33:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	85 c0                	test   %eax,%eax
  11:	74 1f                	je     32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	8b 50 04             	mov    0x4(%eax),%edx
  19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1c:	8b 00                	mov    (%eax),%eax
  1e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  25:	00 
  26:	89 54 24 04          	mov    %edx,0x4(%esp)
  2a:	89 04 24             	mov    %eax,(%esp)
  2d:	e8 00 00 00 00       	call   32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  32:	90                   	nop
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	90                   	nop
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::get()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	89 04 24             	mov    %eax,(%esp)
  12:	e8 00 00 00 00       	call   17 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::get()+0x17>
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZSt4moveIRKSaI21UnlockedConcreteStateEEONSt16remove_referenceIT_E4typeEOS5_:

00000000 <std::remove_reference<std::allocator<UnlockedConcreteState> const&>::type&& std::move<std::allocator<UnlockedConcreteState> const&>(std::allocator<UnlockedConcreteState> const&&&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZNSaI21UnlockedConcreteStateEC2ERKS0_:

00000000 <std::allocator<UnlockedConcreteState>::allocator(std::allocator<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<UnlockedConcreteState>::allocator(std::allocator<UnlockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSaI21UnlockedConcreteStateEC1ERKS0_:

00000000 <std::allocator<UnlockedConcreteState>::allocator(std::allocator<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<UnlockedConcreteState>::allocator(std::allocator<UnlockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI21UnlockedConcreteStateELb1EED2Ev:

00000000 <std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>::~_Sp_ebo_helper()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>::~_Sp_ebo_helper()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_:

00000000 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x14>
  14:	ba 08 00 00 00       	mov    $0x8,%edx
  19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1c:	89 10                	mov    %edx,(%eax)
  1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  21:	8d 58 0c             	lea    0xc(%eax),%ebx
  24:	8d 45 f7             	lea    -0x9(%ebp),%eax
  27:	8b 55 08             	mov    0x8(%ebp),%edx
  2a:	89 14 24             	mov    %edx,(%esp)
  2d:	89 c1                	mov    %eax,%ecx
  2f:	e8 00 00 00 00       	call   34 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x34>
  34:	83 ec 04             	sub    $0x4,%esp
  37:	8d 45 f7             	lea    -0x9(%ebp),%eax
  3a:	89 04 24             	mov    %eax,(%esp)
  3d:	89 d9                	mov    %ebx,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x44>
  44:	83 ec 04             	sub    $0x4,%esp
  47:	8d 45 f7             	lea    -0x9(%ebp),%eax
  4a:	89 c1                	mov    %eax,%ecx
  4c:	e8 00 00 00 00       	call   51 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x51>
  51:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  54:	89 c1                	mov    %eax,%ecx
  56:	e8 00 00 00 00       	call   5b <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x5b>
  5b:	89 44 24 04          	mov    %eax,0x4(%esp)
  5f:	8b 45 08             	mov    0x8(%ebp),%eax
  62:	89 04 24             	mov    %eax,(%esp)
  65:	e8 00 00 00 00       	call   6a <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x6a>
  6a:	eb 23                	jmp    8f <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x8f>
  6c:	89 c3                	mov    %eax,%ebx
  6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  71:	83 c0 0c             	add    $0xc,%eax
  74:	89 c1                	mov    %eax,%ecx
  76:	e8 00 00 00 00       	call   7b <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x7b>
  7b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  7e:	89 c1                	mov    %eax,%ecx
  80:	e8 00 00 00 00       	call   85 <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x85>
  85:	89 d8                	mov    %ebx,%eax
  87:	89 04 24             	mov    %eax,(%esp)
  8a:	e8 00 00 00 00       	call   8f <_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x8f>
  8f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  92:	c9                   	leave  
  93:	c2 04 00             	ret    $0x4
  96:	90                   	nop
  97:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:

00000000 <_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  13:	8b 45 fc             	mov    -0x4(%ebp),%eax
  16:	c9                   	leave  
  17:	c2 04 00             	ret    $0x4
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocator<LockedConcreteState>(std::allocator<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocator<LockedConcreteState>(std::allocator<LockedConcreteState> const&)+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	e8 00 00 00 00       	call   19 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)+0x19>
  19:	89 44 24 04          	mov    %eax,0x4(%esp)
  1d:	8b 45 0c             	mov    0xc(%ebp),%eax
  20:	89 04 24             	mov    %eax,(%esp)
  23:	8b 4d 08             	mov    0x8(%ebp),%ecx
  26:	e8 00 00 00 00       	call   2b <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)+0x2b>
  2b:	83 ec 08             	sub    $0x8,%esp
  2e:	8b 45 08             	mov    0x8(%ebp),%eax
  31:	c9                   	leave  
  32:	c3                   	ret    
  33:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	85 c0                	test   %eax,%eax
  11:	74 1f                	je     32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	8b 50 04             	mov    0x4(%eax),%edx
  19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1c:	8b 00                	mov    (%eax),%eax
  1e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  25:	00 
  26:	89 54 24 04          	mov    %edx,0x4(%esp)
  2a:	89 04 24             	mov    %eax,(%esp)
  2d:	e8 00 00 00 00       	call   32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  32:	90                   	nop
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	90                   	nop
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::get()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	89 04 24             	mov    %eax,(%esp)
  12:	e8 00 00 00 00       	call   17 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::get()+0x17>
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZSt4moveIRKSaI19LockedConcreteStateEEONSt16remove_referenceIT_E4typeEOS5_:

00000000 <std::remove_reference<std::allocator<LockedConcreteState> const&>::type&& std::move<std::allocator<LockedConcreteState> const&>(std::allocator<LockedConcreteState> const&&&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZNSaI19LockedConcreteStateEC2ERKS0_:

00000000 <std::allocator<LockedConcreteState>::allocator(std::allocator<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<LockedConcreteState>::allocator(std::allocator<LockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSaI19LockedConcreteStateEC1ERKS0_:

00000000 <std::allocator<LockedConcreteState>::allocator(std::allocator<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<LockedConcreteState>::allocator(std::allocator<LockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI19LockedConcreteStateELb1EED2Ev:

00000000 <std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>::~_Sp_ebo_helper()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>::~_Sp_ebo_helper()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_:

00000000 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x14>
  14:	ba 08 00 00 00       	mov    $0x8,%edx
  19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1c:	89 10                	mov    %edx,(%eax)
  1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  21:	8d 58 0c             	lea    0xc(%eax),%ebx
  24:	8d 45 f7             	lea    -0x9(%ebp),%eax
  27:	8b 55 08             	mov    0x8(%ebp),%edx
  2a:	89 14 24             	mov    %edx,(%esp)
  2d:	89 c1                	mov    %eax,%ecx
  2f:	e8 00 00 00 00       	call   34 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x34>
  34:	83 ec 04             	sub    $0x4,%esp
  37:	8d 45 f7             	lea    -0x9(%ebp),%eax
  3a:	89 04 24             	mov    %eax,(%esp)
  3d:	89 d9                	mov    %ebx,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x44>
  44:	83 ec 04             	sub    $0x4,%esp
  47:	8d 45 f7             	lea    -0x9(%ebp),%eax
  4a:	89 c1                	mov    %eax,%ecx
  4c:	e8 00 00 00 00       	call   51 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x51>
  51:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  54:	89 c1                	mov    %eax,%ecx
  56:	e8 00 00 00 00       	call   5b <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x5b>
  5b:	89 44 24 04          	mov    %eax,0x4(%esp)
  5f:	8b 45 08             	mov    0x8(%ebp),%eax
  62:	89 04 24             	mov    %eax,(%esp)
  65:	e8 00 00 00 00       	call   6a <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x6a>
  6a:	eb 23                	jmp    8f <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x8f>
  6c:	89 c3                	mov    %eax,%ebx
  6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  71:	83 c0 0c             	add    $0xc,%eax
  74:	89 c1                	mov    %eax,%ecx
  76:	e8 00 00 00 00       	call   7b <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x7b>
  7b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  7e:	89 c1                	mov    %eax,%ecx
  80:	e8 00 00 00 00       	call   85 <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x85>
  85:	89 d8                	mov    %ebx,%eax
  87:	89 04 24             	mov    %eax,(%esp)
  8a:	e8 00 00 00 00       	call   8f <_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJEEES1_DpOT_+0x8f>
  8f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  92:	c9                   	leave  
  93:	c2 04 00             	ret    $0x4
  96:	90                   	nop
  97:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:

00000000 <_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  13:	8b 45 fc             	mov    -0x4(%ebp),%eax
  16:	c9                   	leave  
  17:	c2 04 00             	ret    $0x4
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocator<Context>(std::allocator<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocator<Context>(std::allocator<Context> const&)+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSaISt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::~allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::~allocator()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	e8 00 00 00 00       	call   19 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&)+0x19>
  19:	89 44 24 04          	mov    %eax,0x4(%esp)
  1d:	8b 45 0c             	mov    0xc(%ebp),%eax
  20:	89 04 24             	mov    %eax,(%esp)
  23:	8b 4d 08             	mov    0x8(%ebp),%ecx
  26:	e8 00 00 00 00       	call   2b <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > > std::__allocate_guarded<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&)+0x2b>
  2b:	83 ec 08             	sub    $0x8,%esp
  2e:	8b 45 08             	mov    0x8(%ebp),%eax
  31:	c9                   	leave  
  32:	c3                   	ret    
  33:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	85 c0                	test   %eax,%eax
  11:	74 1f                	je     32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	8b 50 04             	mov    0x4(%eax),%edx
  19:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1c:	8b 00                	mov    (%eax),%eax
  1e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  25:	00 
  26:	89 54 24 04          	mov    %edx,0x4(%esp)
  2a:	89 04 24             	mov    %eax,(%esp)
  2d:	e8 00 00 00 00       	call   32 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::~__allocated_ptr()+0x32>
  32:	90                   	nop
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	90                   	nop
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::get()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 40 04             	mov    0x4(%eax),%eax
   f:	89 04 24             	mov    %eax,(%esp)
  12:	e8 00 00 00 00       	call   17 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::get()+0x17>
  17:	c9                   	leave  
  18:	c3                   	ret    
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZSt4moveIRKSaI7ContextEEONSt16remove_referenceIT_E4typeEOS5_:

00000000 <std::remove_reference<std::allocator<Context> const&>::type&& std::move<std::allocator<Context> const&>(std::allocator<Context> const&&&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZNSaI7ContextEC2ERKS0_:

00000000 <std::allocator<Context>::allocator(std::allocator<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<Context>::allocator(std::allocator<Context> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSaI7ContextEC1ERKS0_:

00000000 <std::allocator<Context>::allocator(std::allocator<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::allocator<Context>::allocator(std::allocator<Context> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI7ContextELb1EED2Ev:

00000000 <std::_Sp_ebo_helper<0, std::allocator<Context>, true>::~_Sp_ebo_helper()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_ebo_helper<0, std::allocator<Context>, true>::~_Sp_ebo_helper()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::~_Impl()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_:

00000000 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x14>
  14:	ba 08 00 00 00       	mov    $0x8,%edx
  19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1c:	89 10                	mov    %edx,(%eax)
  1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  21:	8d 58 0c             	lea    0xc(%eax),%ebx
  24:	8d 45 f7             	lea    -0x9(%ebp),%eax
  27:	8b 55 08             	mov    0x8(%ebp),%edx
  2a:	89 14 24             	mov    %edx,(%esp)
  2d:	89 c1                	mov    %eax,%ecx
  2f:	e8 00 00 00 00       	call   34 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x34>
  34:	83 ec 04             	sub    $0x4,%esp
  37:	8d 45 f7             	lea    -0x9(%ebp),%eax
  3a:	89 04 24             	mov    %eax,(%esp)
  3d:	89 d9                	mov    %ebx,%ecx
  3f:	e8 00 00 00 00       	call   44 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x44>
  44:	83 ec 04             	sub    $0x4,%esp
  47:	8d 45 f7             	lea    -0x9(%ebp),%eax
  4a:	89 c1                	mov    %eax,%ecx
  4c:	e8 00 00 00 00       	call   51 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x51>
  51:	8b 45 0c             	mov    0xc(%ebp),%eax
  54:	89 04 24             	mov    %eax,(%esp)
  57:	e8 00 00 00 00       	call   5c <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x5c>
  5c:	89 c3                	mov    %eax,%ebx
  5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  61:	89 c1                	mov    %eax,%ecx
  63:	e8 00 00 00 00       	call   68 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x68>
  68:	89 5c 24 08          	mov    %ebx,0x8(%esp)
  6c:	89 44 24 04          	mov    %eax,0x4(%esp)
  70:	8b 45 08             	mov    0x8(%ebp),%eax
  73:	89 04 24             	mov    %eax,(%esp)
  76:	e8 00 00 00 00       	call   7b <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x7b>
  7b:	eb 23                	jmp    a0 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0xa0>
  7d:	89 c3                	mov    %eax,%ebx
  7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  82:	83 c0 0c             	add    $0xc,%eax
  85:	89 c1                	mov    %eax,%ecx
  87:	e8 00 00 00 00       	call   8c <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x8c>
  8c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  8f:	89 c1                	mov    %eax,%ecx
  91:	e8 00 00 00 00       	call   96 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0x96>
  96:	89 d8                	mov    %ebx,%eax
  98:	89 04 24             	mov    %eax,(%esp)
  9b:	e8 00 00 00 00       	call   a0 <_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRSt10shared_ptrI19LockedConcreteStateEEEES1_DpOT_+0xa0>
  a0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  a3:	c9                   	leave  
  a4:	c2 08 00             	ret    $0x8
  a7:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:

00000000 <_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  13:	8b 45 fc             	mov    -0x4(%ebp),%eax
  16:	c9                   	leave  
  17:	c2 04 00             	ret    $0x4
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEED2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	8b 4d 08             	mov    0x8(%ebp),%ecx
  17:	e8 00 00 00 00       	call   1c <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)+0x1c>
  1c:	83 ec 08             	sub    $0x8,%esp
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)+0x14>
  14:	89 c2                	mov    %eax,%edx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	89 10                	mov    %edx,(%eax)
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	8b 55 0c             	mov    0xc(%ebp),%edx
  21:	89 50 04             	mov    %edx,0x4(%eax)
  24:	90                   	nop
  25:	c9                   	leave  
  26:	c2 08 00             	ret    $0x8
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 10             	mov    0x10(%ebp),%eax
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	8b 45 0c             	mov    0xc(%ebp),%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  16:	e8 00 00 00 00       	call   1b <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x1b>
  1b:	83 ec 08             	sub    $0x8,%esp
  1e:	90                   	nop
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>* std::__to_address<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >(std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateEC2ERKS2_:

00000000 <__gnu_cxx::new_allocator<UnlockedConcreteState>::new_allocator(__gnu_cxx::new_allocator<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev:

00000000 <std::_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>::_Sp_counted_base()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 fc             	mov    -0x4(%ebp),%eax
  16:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
  1d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  20:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
  27:	90                   	nop
  28:	c9                   	leave  
  29:	c3                   	ret    
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<UnlockedConcreteState>)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<UnlockedConcreteState>)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()+0x16>
  16:	c9                   	leave  
  17:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaI21UnlockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_:

00000000 <_ZNSt16allocator_traitsISaI21UnlockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   f:	e8 00 00 00 00       	call   14 <_ZNSt16allocator_traitsISaI21UnlockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_+0x14>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	90                   	nop
  18:	c9                   	leave  
  19:	c3                   	ret    
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEED2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	8b 4d 08             	mov    0x8(%ebp),%ecx
  17:	e8 00 00 00 00       	call   1c <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)+0x1c>
  1c:	83 ec 08             	sub    $0x8,%esp
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)+0x14>
  14:	89 c2                	mov    %eax,%edx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	89 10                	mov    %edx,(%eax)
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	8b 55 0c             	mov    0xc(%ebp),%edx
  21:	89 50 04             	mov    %edx,0x4(%eax)
  24:	90                   	nop
  25:	c9                   	leave  
  26:	c2 08 00             	ret    $0x8
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 10             	mov    0x10(%ebp),%eax
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	8b 45 0c             	mov    0xc(%ebp),%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  16:	e8 00 00 00 00       	call   1b <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x1b>
  1b:	83 ec 08             	sub    $0x8,%esp
  1e:	90                   	nop
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>* std::__to_address<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >(std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateEC2ERKS2_:

00000000 <__gnu_cxx::new_allocator<LockedConcreteState>::new_allocator(__gnu_cxx::new_allocator<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<LockedConcreteState>)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<LockedConcreteState>)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()+0x16>
  16:	c9                   	leave  
  17:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaI19LockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_:

00000000 <_ZNSt16allocator_traitsISaI19LockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   f:	e8 00 00 00 00       	call   14 <_ZNSt16allocator_traitsISaI19LockedConcreteStateEE9constructIS0_JEEEvRS1_PT_DpOT0_+0x14>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	90                   	nop
  18:	c9                   	leave  
  19:	c3                   	ret    
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI7ContextSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI7ContextSaIS2_ELNS_12_Lock_policyE2EEED2Ev:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::~new_allocator()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   d:	00 
   e:	8b 45 0c             	mov    0xc(%ebp),%eax
  11:	89 04 24             	mov    %eax,(%esp)
  14:	8b 4d 08             	mov    0x8(%ebp),%ecx
  17:	e8 00 00 00 00       	call   1c <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::allocate(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, unsigned int)+0x1c>
  1c:	83 ec 08             	sub    $0x8,%esp
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_:

00000000 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::__allocated_ptr<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::__allocated_ptr(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*)+0x14>
  14:	89 c2                	mov    %eax,%edx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	89 10                	mov    %edx,(%eax)
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	8b 55 0c             	mov    0xc(%ebp),%edx
  21:	89 50 04             	mov    %edx,0x4(%eax)
  24:	90                   	nop
  25:	c9                   	leave  
  26:	c2 08 00             	ret    $0x8
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_j:

00000000 <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 10             	mov    0x10(%ebp),%eax
   9:	89 44 24 04          	mov    %eax,0x4(%esp)
   d:	8b 45 0c             	mov    0xc(%ebp),%eax
  10:	89 04 24             	mov    %eax,(%esp)
  13:	8b 4d 08             	mov    0x8(%ebp),%ecx
  16:	e8 00 00 00 00       	call   1b <std::allocator_traits<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >::deallocate(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&, std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x1b>
  1b:	83 ec 08             	sub    $0x8,%esp
  1e:	90                   	nop
  1f:	c9                   	leave  
  20:	c3                   	ret    
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>* std::__to_address<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >(std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI7ContextEC2ERKS2_:

00000000 <__gnu_cxx::new_allocator<Context>::new_allocator(__gnu_cxx::new_allocator<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	90                   	nop
   a:	c9                   	leave  
   b:	c2 04 00             	ret    $0x4
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<Context>)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::_Impl(std::allocator<Context>)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_ptr()+0x16>
  16:	c9                   	leave  
  17:	c3                   	ret    

Disassembly of section .text$_ZNSt16allocator_traitsISaI7ContextEE9constructIS0_JRSt10shared_ptrI19LockedConcreteStateEEEEvRS1_PT_DpOT0_:

00000000 <_ZNSt16allocator_traitsISaI7ContextEE9constructIS0_JRSt10shared_ptrI19LockedConcreteStateEEEEvRS1_PT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 10             	mov    0x10(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	e8 00 00 00 00       	call   11 <_ZNSt16allocator_traitsISaI7ContextEE9constructIS0_JRSt10shared_ptrI19LockedConcreteStateEEEEvRS1_PT_DpOT0_+0x11>
  11:	89 44 24 04          	mov    %eax,0x4(%esp)
  15:	8b 45 0c             	mov    0xc(%ebp),%eax
  18:	89 04 24             	mov    %eax,(%esp)
  1b:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1e:	e8 00 00 00 00       	call   23 <_ZNSt16allocator_traitsISaI7ContextEE9constructIS0_JRSt10shared_ptrI19LockedConcreteStateEEEEvRS1_PT_DpOT0_+0x23>
  23:	83 ec 08             	sub    $0x8,%esp
  26:	90                   	nop
  27:	c9                   	leave  
  28:	c3                   	ret    
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE8allocateEjPKv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x13>
  13:	39 45 08             	cmp    %eax,0x8(%ebp)
  16:	0f 97 c0             	seta   %al
  19:	84 c0                	test   %al,%al
  1b:	74 05                	je     22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  1d:	e8 00 00 00 00       	call   22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  22:	8b 55 08             	mov    0x8(%ebp),%edx
  25:	89 d0                	mov    %edx,%eax
  27:	01 c0                	add    %eax,%eax
  29:	01 d0                	add    %edx,%eax
  2b:	c1 e0 03             	shl    $0x3,%eax
  2e:	89 04 24             	mov    %eax,(%esp)
  31:	e8 00 00 00 00       	call   36 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x36>
  36:	c9                   	leave  
  37:	c2 08 00             	ret    $0x8
  3a:	90                   	nop
  3b:	90                   	nop

Disassembly of section .text$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >* std::__addressof<std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_j:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x14>
  14:	90                   	nop
  15:	c9                   	leave  
  16:	c2 08 00             	ret    $0x8
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI21UnlockedConcreteStateELb1EEC2ERKS1_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>::_Sp_ebo_helper(std::allocator<UnlockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>::_Sp_ebo_helper(std::allocator<UnlockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI21UnlockedConcreteStateE6_M_ptrEv:

00000000 <__gnu_cxx::__aligned_buffer<UnlockedConcreteState>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::__aligned_buffer<UnlockedConcreteState>::_M_ptr()+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_:

00000000 <_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 44 24 04          	mov    %eax,0x4(%esp)
  10:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  17:	e8 00 00 00 00       	call   1c <_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_+0x1c>
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 7e 02 00 00       	call   2a1 <UnlockedConcreteState::UnlockedConcreteState()+0x23>
  23:	90                   	nop
  24:	c9                   	leave  
  25:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE8allocateEjPKv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x13>
  13:	39 45 08             	cmp    %eax,0x8(%ebp)
  16:	0f 97 c0             	seta   %al
  19:	84 c0                	test   %al,%al
  1b:	74 05                	je     22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  1d:	e8 00 00 00 00       	call   22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  22:	8b 55 08             	mov    0x8(%ebp),%edx
  25:	89 d0                	mov    %edx,%eax
  27:	01 c0                	add    %eax,%eax
  29:	01 d0                	add    %edx,%eax
  2b:	c1 e0 03             	shl    $0x3,%eax
  2e:	89 04 24             	mov    %eax,(%esp)
  31:	e8 00 00 00 00       	call   36 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x36>
  36:	c9                   	leave  
  37:	c2 08 00             	ret    $0x8
  3a:	90                   	nop
  3b:	90                   	nop

Disassembly of section .text$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >* std::__addressof<std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_j:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x14>
  14:	90                   	nop
  15:	c9                   	leave  
  16:	c2 08 00             	ret    $0x8
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI19LockedConcreteStateELb1EEC2ERKS1_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>::_Sp_ebo_helper(std::allocator<LockedConcreteState> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>::_Sp_ebo_helper(std::allocator<LockedConcreteState> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI19LockedConcreteStateE6_M_ptrEv:

00000000 <__gnu_cxx::__aligned_buffer<LockedConcreteState>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::__aligned_buffer<LockedConcreteState>::_M_ptr()+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_:

00000000 <_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 44 24 04          	mov    %eax,0x4(%esp)
  10:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  17:	e8 00 00 00 00       	call   1c <_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateE9constructIS1_JEEEvPT_DpOT0_+0x1c>
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 6a 01 00 00       	call   18d <LockedConcreteState::LockedConcreteState()+0x23>
  23:	90                   	nop
  24:	c9                   	leave  
  25:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI7ContextSaIS2_ELNS_12_Lock_policyE2EEE8allocateEjPKv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x13>
  13:	39 45 08             	cmp    %eax,0x8(%ebp)
  16:	0f 97 c0             	seta   %al
  19:	84 c0                	test   %al,%al
  1b:	74 05                	je     22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  1d:	e8 00 00 00 00       	call   22 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x22>
  22:	8b 55 08             	mov    0x8(%ebp),%edx
  25:	89 d0                	mov    %edx,%eax
  27:	c1 e0 02             	shl    $0x2,%eax
  2a:	01 d0                	add    %edx,%eax
  2c:	c1 e0 02             	shl    $0x2,%eax
  2f:	89 04 24             	mov    %eax,(%esp)
  32:	e8 00 00 00 00       	call   37 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::allocate(unsigned int, void const*)+0x37>
  37:	c9                   	leave  
  38:	c2 08 00             	ret    $0x8
  3b:	90                   	nop

Disassembly of section .text$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI7ContextSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:

00000000 <std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >* std::__addressof<std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> > >(std::allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI7ContextSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_j:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::deallocate(std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>*, unsigned int)+0x14>
  14:	90                   	nop
  15:	c9                   	leave  
  16:	c2 08 00             	ret    $0x8
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI7ContextELb1EEC2ERKS1_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<Context>, true>::_Sp_ebo_helper(std::allocator<Context> const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	8b 55 08             	mov    0x8(%ebp),%edx
   f:	89 14 24             	mov    %edx,(%esp)
  12:	89 c1                	mov    %eax,%ecx
  14:	e8 00 00 00 00       	call   19 <std::_Sp_ebo_helper<0, std::allocator<Context>, true>::_Sp_ebo_helper(std::allocator<Context> const&)+0x19>
  19:	83 ec 04             	sub    $0x4,%esp
  1c:	90                   	nop
  1d:	c9                   	leave  
  1e:	c2 04 00             	ret    $0x4
  21:	90                   	nop
  22:	90                   	nop
  23:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI7ContextE6_M_ptrEv:

00000000 <__gnu_cxx::__aligned_buffer<Context>::_M_ptr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <__gnu_cxx::__aligned_buffer<Context>::_M_ptr()+0x13>
  13:	c9                   	leave  
  14:	c3                   	ret    
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_:

00000000 <_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
   7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   a:	8b 45 0c             	mov    0xc(%ebp),%eax
   d:	89 04 24             	mov    %eax,(%esp)
  10:	e8 00 00 00 00       	call   15 <_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_+0x15>
  15:	89 c2                	mov    %eax,%edx
  17:	8d 45 f0             	lea    -0x10(%ebp),%eax
  1a:	89 14 24             	mov    %edx,(%esp)
  1d:	89 c1                	mov    %eax,%ecx
  1f:	e8 00 00 00 00       	call   24 <_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_+0x24>
  24:	83 ec 04             	sub    $0x4,%esp
  27:	8d 5d f0             	lea    -0x10(%ebp),%ebx
  2a:	8b 45 08             	mov    0x8(%ebp),%eax
  2d:	89 44 24 04          	mov    %eax,0x4(%esp)
  31:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  38:	e8 00 00 00 00       	call   3d <_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_+0x3d>
  3d:	89 1c 24             	mov    %ebx,(%esp)
  40:	89 c1                	mov    %eax,%ecx
  42:	e8 dc 00 00 00       	call   123 <Context::ChangeState(std::shared_ptr<IState>)+0x1b>
  47:	83 ec 04             	sub    $0x4,%esp
  4a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  4d:	89 c1                	mov    %eax,%ecx
  4f:	e8 00 00 00 00       	call   54 <_ZN9__gnu_cxx13new_allocatorI7ContextE9constructIS1_JRSt10shared_ptrI19LockedConcreteStateEEEEvPT_DpOT0_+0x54>
  54:	90                   	nop
  55:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  58:	c9                   	leave  
  59:	c2 08 00             	ret    $0x8

Disassembly of section .text$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::max_size() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	b8 aa aa aa 0a       	mov    $0xaaaaaaa,%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI21UnlockedConcreteStateE7_M_addrEv:

00000000 <__gnu_cxx::__aligned_buffer<UnlockedConcreteState>::_M_addr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c9                   	leave  
   d:	c3                   	ret    
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2> >::max_size() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	b8 aa aa aa 0a       	mov    $0xaaaaaaa,%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI19LockedConcreteStateE7_M_addrEv:

00000000 <__gnu_cxx::__aligned_buffer<LockedConcreteState>::_M_addr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c9                   	leave  
   d:	c3                   	ret    
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI7ContextSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv:

00000000 <__gnu_cxx::new_allocator<std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2> >::max_size() const>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	b8 cc cc cc 0c       	mov    $0xccccccc,%eax
   e:	c9                   	leave  
   f:	c3                   	ret    

Disassembly of section .text$_ZN9__gnu_cxx16__aligned_bufferI7ContextE7_M_addrEv:

00000000 <__gnu_cxx::__aligned_buffer<Context>::_M_addr()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 04             	sub    $0x4,%esp
   6:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   c:	c9                   	leave  
   d:	c3                   	ret    
   e:	90                   	nop
   f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 0c             	add    $0xc,%eax
  19:	89 c1                	mov    %eax,%ecx
  1b:	e8 00 00 00 00       	call   20 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x20>
  20:	8b 45 f4             	mov    -0xc(%ebp),%eax
  23:	89 c1                	mov    %eax,%ecx
  25:	e8 00 00 00 00       	call   2a <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x2a>
  2a:	90                   	nop
  2b:	c9                   	leave  
  2c:	c3                   	ret    
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x13>
  13:	c7 44 24 04 14 00 00 	movl   $0x14,0x4(%esp)
  1a:	00 
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	89 04 24             	mov    %eax,(%esp)
  21:	e8 00 00 00 00       	call   26 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x26>
  26:	c9                   	leave  
  27:	c3                   	ret    

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x14>
  14:	89 c3                	mov    %eax,%ebx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	83 c0 0c             	add    $0xc,%eax
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 00 00 00 00       	call   23 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x23>
  23:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  27:	89 04 24             	mov    %eax,(%esp)
  2a:	e8 00 00 00 00       	call   2f <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x2f>
  2f:	90                   	nop
  30:	83 c4 24             	add    $0x24,%esp
  33:	5b                   	pop    %ebx
  34:	5d                   	pop    %ebp
  35:	c3                   	ret    
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 38             	sub    $0x38,%esp
   6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x16>
  16:	89 c2                	mov    %eax,%edx
  18:	8d 45 f7             	lea    -0x9(%ebp),%eax
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 ec             	lea    -0x14(%ebp),%eax
  2b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	8d 55 f7             	lea    -0x9(%ebp),%edx
  35:	89 14 24             	mov    %edx,(%esp)
  38:	89 c1                	mov    %eax,%ecx
  3a:	e8 00 00 00 00       	call   3f <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x3f>
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  45:	89 c1                	mov    %eax,%ecx
  47:	e8 00 00 00 00       	call   4c <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x4c>
  4c:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4f:	89 c1                	mov    %eax,%ecx
  51:	e8 00 00 00 00       	call   56 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x56>
  56:	8d 45 f7             	lea    -0x9(%ebp),%eax
  59:	89 c1                	mov    %eax,%ecx
  5b:	e8 00 00 00 00       	call   60 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x60>
  60:	90                   	nop
  61:	c9                   	leave  
  62:	c3                   	ret    
  63:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10:	8b 4d 08             	mov    0x8(%ebp),%ecx
  13:	e8 00 00 00 00       	call   18 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x18>
  18:	83 ec 04             	sub    $0x4,%esp
  1b:	84 c0                	test   %al,%al
  1d:	74 0c                	je     2b <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x2b>
  1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x29>
  29:	eb 05                	jmp    30 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x30>
  2b:	b8 00 00 00 00       	mov    $0x0,%eax
  30:	c9                   	leave  
  31:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 0c             	add    $0xc,%eax
  19:	89 c1                	mov    %eax,%ecx
  1b:	e8 00 00 00 00       	call   20 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x20>
  20:	8b 45 f4             	mov    -0xc(%ebp),%eax
  23:	89 c1                	mov    %eax,%ecx
  25:	e8 00 00 00 00       	call   2a <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x2a>
  2a:	90                   	nop
  2b:	c9                   	leave  
  2c:	c3                   	ret    
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x13>
  13:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
  1a:	00 
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	89 04 24             	mov    %eax,(%esp)
  21:	e8 00 00 00 00       	call   26 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x26>
  26:	c9                   	leave  
  27:	c3                   	ret    

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x14>
  14:	89 c3                	mov    %eax,%ebx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	83 c0 0c             	add    $0xc,%eax
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 00 00 00 00       	call   23 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x23>
  23:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  27:	89 04 24             	mov    %eax,(%esp)
  2a:	e8 00 00 00 00       	call   2f <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x2f>
  2f:	90                   	nop
  30:	83 c4 24             	add    $0x24,%esp
  33:	5b                   	pop    %ebx
  34:	5d                   	pop    %ebp
  35:	c3                   	ret    
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 38             	sub    $0x38,%esp
   6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x16>
  16:	89 c2                	mov    %eax,%edx
  18:	8d 45 f7             	lea    -0x9(%ebp),%eax
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 ec             	lea    -0x14(%ebp),%eax
  2b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	8d 55 f7             	lea    -0x9(%ebp),%edx
  35:	89 14 24             	mov    %edx,(%esp)
  38:	89 c1                	mov    %eax,%ecx
  3a:	e8 00 00 00 00       	call   3f <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x3f>
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  45:	89 c1                	mov    %eax,%ecx
  47:	e8 00 00 00 00       	call   4c <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x4c>
  4c:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4f:	89 c1                	mov    %eax,%ecx
  51:	e8 00 00 00 00       	call   56 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x56>
  56:	8d 45 f7             	lea    -0x9(%ebp),%eax
  59:	89 c1                	mov    %eax,%ecx
  5b:	e8 00 00 00 00       	call   60 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x60>
  60:	90                   	nop
  61:	c9                   	leave  
  62:	c3                   	ret    
  63:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10:	8b 4d 08             	mov    0x8(%ebp),%ecx
  13:	e8 00 00 00 00       	call   18 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x18>
  18:	83 ec 04             	sub    $0x4,%esp
  1b:	84 c0                	test   %al,%al
  1d:	74 0c                	je     2b <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x2b>
  1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x29>
  29:	eb 05                	jmp    30 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x30>
  2b:	b8 00 00 00 00       	mov    $0x0,%eax
  30:	c9                   	leave  
  31:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 0c             	add    $0xc,%eax
  19:	89 c1                	mov    %eax,%ecx
  1b:	e8 00 00 00 00       	call   20 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x20>
  20:	8b 45 f4             	mov    -0xc(%ebp),%eax
  23:	89 c1                	mov    %eax,%ecx
  25:	e8 00 00 00 00       	call   2a <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x2a>
  2a:	90                   	nop
  2b:	c9                   	leave  
  2c:	c3                   	ret    
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x13>
  13:	c7 44 24 04 18 00 00 	movl   $0x18,0x4(%esp)
  1a:	00 
  1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1e:	89 04 24             	mov    %eax,(%esp)
  21:	e8 00 00 00 00       	call   26 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::~_Sp_counted_ptr_inplace()+0x26>
  26:	c9                   	leave  
  27:	c3                   	ret    

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   d:	89 c1                	mov    %eax,%ecx
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x14>
  14:	89 c3                	mov    %eax,%ebx
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	83 c0 0c             	add    $0xc,%eax
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 00 00 00 00       	call   23 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x23>
  23:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  27:	89 04 24             	mov    %eax,(%esp)
  2a:	e8 00 00 00 00       	call   2f <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_dispose()+0x2f>
  2f:	90                   	nop
  30:	83 c4 24             	add    $0x24,%esp
  33:	5b                   	pop    %ebx
  34:	5d                   	pop    %ebp
  35:	c3                   	ret    
  36:	90                   	nop
  37:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 38             	sub    $0x38,%esp
   6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   c:	83 c0 0c             	add    $0xc,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 00 00 00 00       	call   16 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x16>
  16:	89 c2                	mov    %eax,%edx
  18:	8d 45 f7             	lea    -0x9(%ebp),%eax
  1b:	89 14 24             	mov    %edx,(%esp)
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 00 00 00 00       	call   25 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x25>
  25:	83 ec 04             	sub    $0x4,%esp
  28:	8d 45 ec             	lea    -0x14(%ebp),%eax
  2b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  32:	8d 55 f7             	lea    -0x9(%ebp),%edx
  35:	89 14 24             	mov    %edx,(%esp)
  38:	89 c1                	mov    %eax,%ecx
  3a:	e8 00 00 00 00       	call   3f <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x3f>
  3f:	83 ec 08             	sub    $0x8,%esp
  42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  45:	89 c1                	mov    %eax,%ecx
  47:	e8 00 00 00 00       	call   4c <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x4c>
  4c:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4f:	89 c1                	mov    %eax,%ecx
  51:	e8 00 00 00 00       	call   56 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x56>
  56:	8d 45 f7             	lea    -0x9(%ebp),%eax
  59:	89 c1                	mov    %eax,%ecx
  5b:	e8 00 00 00 00       	call   60 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_destroy()+0x60>
  60:	90                   	nop
  61:	c9                   	leave  
  62:	c3                   	ret    
  63:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10:	8b 4d 08             	mov    0x8(%ebp),%ecx
  13:	e8 00 00 00 00       	call   18 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x18>
  18:	83 ec 04             	sub    $0x4,%esp
  1b:	84 c0                	test   %al,%al
  1d:	74 0c                	je     2b <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x2b>
  1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  22:	89 c1                	mov    %eax,%ecx
  24:	e8 00 00 00 00       	call   29 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x29>
  29:	eb 05                	jmp    30 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_M_get_deleter(std::type_info const&)+0x30>
  2b:	b8 00 00 00 00       	mov    $0x0,%eax
  30:	c9                   	leave  
  31:	c2 04 00             	ret    $0x4

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI7ContextSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:

00000000 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<Context, std::allocator<Context>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()+0x14>
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaI7ContextEE7destroyIS0_EEvRS1_PT_:

00000000 <void std::allocator_traits<std::allocator<Context> >::destroy<Context>(std::allocator<Context>&, Context*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   f:	e8 00 00 00 00       	call   14 <void std::allocator_traits<std::allocator<Context> >::destroy<Context>(std::allocator<Context>&, Context*)+0x14>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	90                   	nop
  18:	c9                   	leave  
  19:	c3                   	ret    
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI19LockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:

00000000 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<LockedConcreteState, std::allocator<LockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()+0x14>
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaI19LockedConcreteStateEE7destroyIS0_EEvRS1_PT_:

00000000 <void std::allocator_traits<std::allocator<LockedConcreteState> >::destroy<LockedConcreteState>(std::allocator<LockedConcreteState>&, LockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   f:	e8 00 00 00 00       	call   14 <void std::allocator_traits<std::allocator<LockedConcreteState> >::destroy<LockedConcreteState>(std::allocator<LockedConcreteState>&, LockedConcreteState*)+0x14>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	90                   	nop
  18:	c9                   	leave  
  19:	c3                   	ret    
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt23_Sp_counted_ptr_inplaceI21UnlockedConcreteStateSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:

00000000 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 04 24             	mov    %eax,(%esp)
   f:	e8 00 00 00 00       	call   14 <std::_Sp_counted_ptr_inplace<UnlockedConcreteState, std::allocator<UnlockedConcreteState>, (__gnu_cxx::_Lock_policy)2>::_Impl::_M_alloc()+0x14>
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt16allocator_traitsISaI21UnlockedConcreteStateEE7destroyIS0_EEvRS1_PT_:

00000000 <void std::allocator_traits<std::allocator<UnlockedConcreteState> >::destroy<UnlockedConcreteState>(std::allocator<UnlockedConcreteState>&, UnlockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 04 24             	mov    %eax,(%esp)
   c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   f:	e8 00 00 00 00       	call   14 <void std::allocator_traits<std::allocator<UnlockedConcreteState> >::destroy<UnlockedConcreteState>(std::allocator<UnlockedConcreteState>&, UnlockedConcreteState*)+0x14>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	90                   	nop
  18:	c9                   	leave  
  19:	c3                   	ret    
  1a:	90                   	nop
  1b:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI7ContextELb1EE6_S_getERS2_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<Context>, true>::_S_get(std::_Sp_ebo_helper<0, std::allocator<Context>, true>&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN7ContextD1Ev:

00000000 <Context::~Context()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	89 c1                	mov    %eax,%ecx
   e:	e8 00 00 00 00       	call   13 <Context::~Context()+0x13>
  13:	90                   	nop
  14:	c9                   	leave  
  15:	c3                   	ret    
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI7ContextE7destroyIS1_EEvPT_:

00000000 <void __gnu_cxx::new_allocator<Context>::destroy<Context>(Context*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 4d 08             	mov    0x8(%ebp),%ecx
   c:	e8 00 00 00 00       	call   11 <void __gnu_cxx::new_allocator<Context>::destroy<Context>(Context*)+0x11>
  11:	90                   	nop
  12:	c9                   	leave  
  13:	c2 04 00             	ret    $0x4
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI19LockedConcreteStateELb1EE6_S_getERS2_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>::_S_get(std::_Sp_ebo_helper<0, std::allocator<LockedConcreteState>, true>&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN19LockedConcreteStateD1Ev:

00000000 <LockedConcreteState::~LockedConcreteState()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 04             	add    $0x4,%eax
  19:	89 c1                	mov    %eax,%ecx
  1b:	e8 00 00 00 00       	call   20 <LockedConcreteState::~LockedConcreteState()+0x20>
  20:	90                   	nop
  21:	c9                   	leave  
  22:	c3                   	ret    
  23:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI19LockedConcreteStateE7destroyIS1_EEvPT_:

00000000 <void __gnu_cxx::new_allocator<LockedConcreteState>::destroy<LockedConcreteState>(LockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 4d 08             	mov    0x8(%ebp),%ecx
   c:	e8 00 00 00 00       	call   11 <void __gnu_cxx::new_allocator<LockedConcreteState>::destroy<LockedConcreteState>(LockedConcreteState*)+0x11>
  11:	90                   	nop
  12:	c9                   	leave  
  13:	c2 04 00             	ret    $0x4
  16:	90                   	nop
  17:	90                   	nop

Disassembly of section .text$_ZNSt14_Sp_ebo_helperILi0ESaI21UnlockedConcreteStateELb1EE6_S_getERS2_:

00000000 <std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>::_S_get(std::_Sp_ebo_helper<0, std::allocator<UnlockedConcreteState>, true>&)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	8b 45 08             	mov    0x8(%ebp),%eax
   6:	5d                   	pop    %ebp
   7:	c3                   	ret    

Disassembly of section .text$_ZN21UnlockedConcreteStateD1Ev:

00000000 <UnlockedConcreteState::~UnlockedConcreteState()>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	ba 08 00 00 00       	mov    $0x8,%edx
   e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  11:	89 10                	mov    %edx,(%eax)
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	83 c0 04             	add    $0x4,%eax
  19:	89 c1                	mov    %eax,%ecx
  1b:	e8 00 00 00 00       	call   20 <UnlockedConcreteState::~UnlockedConcreteState()+0x20>
  20:	90                   	nop
  21:	c9                   	leave  
  22:	c3                   	ret    
  23:	90                   	nop

Disassembly of section .text$_ZN9__gnu_cxx13new_allocatorI21UnlockedConcreteStateE7destroyIS1_EEvPT_:

00000000 <void __gnu_cxx::new_allocator<UnlockedConcreteState>::destroy<UnlockedConcreteState>(UnlockedConcreteState*)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 4d 08             	mov    0x8(%ebp),%ecx
   c:	e8 00 00 00 00       	call   11 <void __gnu_cxx::new_allocator<UnlockedConcreteState>::destroy<UnlockedConcreteState>(UnlockedConcreteState*)+0x11>
  11:	90                   	nop
  12:	c9                   	leave  
  13:	c2 04 00             	ret    $0x4
  16:	90                   	nop
  17:	90                   	nop
