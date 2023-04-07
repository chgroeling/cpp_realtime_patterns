
obj/state_pattern/state_pattern_enum.o:     file format pe-i386


Disassembly of section .text:

00000000 <Context::Context(StateId)>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   c:	83 c0 04             	add    $0x4,%eax
   f:	89 c1                	mov    %eax,%ecx
  11:	e8 c8 00 00 00       	call   de <LockedConcreteState::LockedConcreteState()>
  16:	8b 45 f4             	mov    -0xc(%ebp),%eax
  19:	83 c0 0c             	add    $0xc,%eax
  1c:	89 c1                	mov    %eax,%ecx
  1e:	e8 3b 01 00 00       	call   15e <UnlockedConcreteState::UnlockedConcreteState()>
  23:	8b 45 f4             	mov    -0xc(%ebp),%eax
  26:	8d 50 04             	lea    0x4(%eax),%edx
  29:	8b 45 f4             	mov    -0xc(%ebp),%eax
  2c:	89 04 24             	mov    %eax,(%esp)
  2f:	89 d1                	mov    %edx,%ecx
  31:	e8 c8 00 00 00       	call   fe <LockedConcreteState::SetContext(Context*)>
  36:	83 ec 04             	sub    $0x4,%esp
  39:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3c:	8d 50 0c             	lea    0xc(%eax),%edx
  3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  42:	89 04 24             	mov    %eax,(%esp)
  45:	89 d1                	mov    %edx,%ecx
  47:	e8 32 01 00 00       	call   17e <UnlockedConcreteState::SetContext(Context*)>
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  52:	8b 55 08             	mov    0x8(%ebp),%edx
  55:	89 14 24             	mov    %edx,(%esp)
  58:	89 c1                	mov    %eax,%ecx
  5a:	e8 09 00 00 00       	call   68 <Context::ChangeState(StateId)>
  5f:	83 ec 04             	sub    $0x4,%esp
  62:	90                   	nop
  63:	c9                   	leave  
  64:	c2 04 00             	ret    $0x4
  67:	90                   	nop

00000068 <Context::ChangeState(StateId)>:
  68:	55                   	push   %ebp
  69:	89 e5                	mov    %esp,%ebp
  6b:	83 ec 04             	sub    $0x4,%esp
  6e:	89 4d fc             	mov    %ecx,-0x4(%ebp)
  71:	8b 45 08             	mov    0x8(%ebp),%eax
  74:	85 c0                	test   %eax,%eax
  76:	74 07                	je     7f <Context::ChangeState(StateId)+0x17>
  78:	83 f8 01             	cmp    $0x1,%eax
  7b:	74 0f                	je     8c <Context::ChangeState(StateId)+0x24>
  7d:	eb 19                	jmp    98 <Context::ChangeState(StateId)+0x30>
  7f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  82:	8d 50 04             	lea    0x4(%eax),%edx
  85:	8b 45 fc             	mov    -0x4(%ebp),%eax
  88:	89 10                	mov    %edx,(%eax)
  8a:	eb 0c                	jmp    98 <Context::ChangeState(StateId)+0x30>
  8c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  8f:	8d 50 0c             	lea    0xc(%eax),%edx
  92:	8b 45 fc             	mov    -0x4(%ebp),%eax
  95:	89 10                	mov    %edx,(%eax)
  97:	90                   	nop
  98:	90                   	nop
  99:	c9                   	leave  
  9a:	c2 04 00             	ret    $0x4
  9d:	90                   	nop

0000009e <Context::Push()>:
  9e:	55                   	push   %ebp
  9f:	89 e5                	mov    %esp,%ebp
  a1:	83 ec 18             	sub    $0x18,%esp
  a4:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  aa:	8b 10                	mov    (%eax),%edx
  ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
  af:	8b 00                	mov    (%eax),%eax
  b1:	8b 00                	mov    (%eax),%eax
  b3:	8b 00                	mov    (%eax),%eax
  b5:	89 d1                	mov    %edx,%ecx
  b7:	ff d0                	call   *%eax
  b9:	90                   	nop
  ba:	c9                   	leave  
  bb:	c3                   	ret    

000000bc <Context::Coin()>:
  bc:	55                   	push   %ebp
  bd:	89 e5                	mov    %esp,%ebp
  bf:	83 ec 18             	sub    $0x18,%esp
  c2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  c8:	8b 10                	mov    (%eax),%edx
  ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
  cd:	8b 00                	mov    (%eax),%eax
  cf:	8b 00                	mov    (%eax),%eax
  d1:	83 c0 04             	add    $0x4,%eax
  d4:	8b 00                	mov    (%eax),%eax
  d6:	89 d1                	mov    %edx,%ecx
  d8:	ff d0                	call   *%eax
  da:	90                   	nop
  db:	c9                   	leave  
  dc:	c3                   	ret    
  dd:	90                   	nop

000000de <LockedConcreteState::LockedConcreteState()>:
  de:	55                   	push   %ebp
  df:	89 e5                	mov    %esp,%ebp
  e1:	83 ec 18             	sub    $0x18,%esp
  e4:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  ea:	89 c1                	mov    %eax,%ecx
  ec:	e8 00 00 00 00       	call   f1 <LockedConcreteState::LockedConcreteState()+0x13>
  f1:	ba 08 00 00 00       	mov    $0x8,%edx
  f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  f9:	89 10                	mov    %edx,(%eax)
  fb:	90                   	nop
  fc:	c9                   	leave  
  fd:	c3                   	ret    

000000fe <LockedConcreteState::SetContext(Context*)>:
  fe:	55                   	push   %ebp
  ff:	89 e5                	mov    %esp,%ebp
 101:	83 ec 04             	sub    $0x4,%esp
 104:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 107:	8b 45 fc             	mov    -0x4(%ebp),%eax
 10a:	8b 55 08             	mov    0x8(%ebp),%edx
 10d:	89 50 04             	mov    %edx,0x4(%eax)
 110:	90                   	nop
 111:	c9                   	leave  
 112:	c2 04 00             	ret    $0x4
 115:	90                   	nop

00000116 <LockedConcreteState::Push()>:
 116:	55                   	push   %ebp
 117:	89 e5                	mov    %esp,%ebp
 119:	83 ec 28             	sub    $0x28,%esp
 11c:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 11f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 126:	e8 00 00 00 00       	call   12b <LockedConcreteState::Push()+0x15>
 12b:	90                   	nop
 12c:	c9                   	leave  
 12d:	c3                   	ret    

0000012e <LockedConcreteState::Coin()>:
 12e:	55                   	push   %ebp
 12f:	89 e5                	mov    %esp,%ebp
 131:	83 ec 28             	sub    $0x28,%esp
 134:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 137:	c7 04 24 3c 00 00 00 	movl   $0x3c,(%esp)
 13e:	e8 00 00 00 00       	call   143 <LockedConcreteState::Coin()+0x15>
 143:	8b 45 f4             	mov    -0xc(%ebp),%eax
 146:	8b 40 04             	mov    0x4(%eax),%eax
 149:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 150:	89 c1                	mov    %eax,%ecx
 152:	e8 11 ff ff ff       	call   68 <Context::ChangeState(StateId)>
 157:	83 ec 04             	sub    $0x4,%esp
 15a:	90                   	nop
 15b:	c9                   	leave  
 15c:	c3                   	ret    
 15d:	90                   	nop

0000015e <UnlockedConcreteState::UnlockedConcreteState()>:
 15e:	55                   	push   %ebp
 15f:	89 e5                	mov    %esp,%ebp
 161:	83 ec 18             	sub    $0x18,%esp
 164:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 167:	8b 45 f4             	mov    -0xc(%ebp),%eax
 16a:	89 c1                	mov    %eax,%ecx
 16c:	e8 00 00 00 00       	call   171 <UnlockedConcreteState::UnlockedConcreteState()+0x13>
 171:	ba 08 00 00 00       	mov    $0x8,%edx
 176:	8b 45 f4             	mov    -0xc(%ebp),%eax
 179:	89 10                	mov    %edx,(%eax)
 17b:	90                   	nop
 17c:	c9                   	leave  
 17d:	c3                   	ret    

0000017e <UnlockedConcreteState::SetContext(Context*)>:
 17e:	55                   	push   %ebp
 17f:	89 e5                	mov    %esp,%ebp
 181:	83 ec 04             	sub    $0x4,%esp
 184:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 187:	8b 45 fc             	mov    -0x4(%ebp),%eax
 18a:	8b 55 08             	mov    0x8(%ebp),%edx
 18d:	89 50 04             	mov    %edx,0x4(%eax)
 190:	90                   	nop
 191:	c9                   	leave  
 192:	c2 04 00             	ret    $0x4
 195:	90                   	nop

00000196 <UnlockedConcreteState::Push()>:
 196:	55                   	push   %ebp
 197:	89 e5                	mov    %esp,%ebp
 199:	83 ec 28             	sub    $0x28,%esp
 19c:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 19f:	c7 04 24 78 00 00 00 	movl   $0x78,(%esp)
 1a6:	e8 00 00 00 00       	call   1ab <UnlockedConcreteState::Push()+0x15>
 1ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1ae:	8b 40 04             	mov    0x4(%eax),%eax
 1b1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1b8:	89 c1                	mov    %eax,%ecx
 1ba:	e8 a9 fe ff ff       	call   68 <Context::ChangeState(StateId)>
 1bf:	83 ec 04             	sub    $0x4,%esp
 1c2:	90                   	nop
 1c3:	c9                   	leave  
 1c4:	c3                   	ret    
 1c5:	90                   	nop

000001c6 <UnlockedConcreteState::Coin()>:
 1c6:	55                   	push   %ebp
 1c7:	89 e5                	mov    %esp,%ebp
 1c9:	83 ec 28             	sub    $0x28,%esp
 1cc:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 1cf:	c7 04 24 b8 00 00 00 	movl   $0xb8,(%esp)
 1d6:	e8 00 00 00 00       	call   1db <UnlockedConcreteState::Coin()+0x15>
 1db:	90                   	nop
 1dc:	c9                   	leave  
 1dd:	c3                   	ret    

000001de <Client()>:
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	83 ec 38             	sub    $0x38,%esp
 1e4:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 1e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1ee:	89 c1                	mov    %eax,%ecx
 1f0:	e8 0b fe ff ff       	call   0 <Context::Context(StateId)>
 1f5:	83 ec 04             	sub    $0x4,%esp
 1f8:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 1fb:	89 c1                	mov    %eax,%ecx
 1fd:	e8 9c fe ff ff       	call   9e <Context::Push()>
 202:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 205:	89 c1                	mov    %eax,%ecx
 207:	e8 b0 fe ff ff       	call   bc <Context::Coin()>
 20c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 20f:	89 c1                	mov    %eax,%ecx
 211:	e8 a6 fe ff ff       	call   bc <Context::Coin()>
 216:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 219:	89 c1                	mov    %eax,%ecx
 21b:	e8 7e fe ff ff       	call   9e <Context::Push()>
 220:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 223:	89 c1                	mov    %eax,%ecx
 225:	e8 74 fe ff ff       	call   9e <Context::Push()>
 22a:	90                   	nop
 22b:	c9                   	leave  
 22c:	c3                   	ret    

0000022d <main>:
 22d:	55                   	push   %ebp
 22e:	89 e5                	mov    %esp,%ebp
 230:	83 e4 f0             	and    $0xfffffff0,%esp
 233:	e8 00 00 00 00       	call   238 <main+0xb>
 238:	e8 a1 ff ff ff       	call   1de <Client()>
 23d:	b8 00 00 00 00       	mov    $0x0,%eax
 242:	c9                   	leave  
 243:	c3                   	ret    

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
