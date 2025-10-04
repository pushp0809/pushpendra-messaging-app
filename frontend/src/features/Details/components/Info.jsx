import './Info.sass';
import { useGlobal } from 'reactn';
import Config from '../../../config';

function Info() {
  const version = useGlobal('version')[0];

  return (
    <div className="info">
      <div className="top">
        <div className="logo">
          <div style={{
            width: '60px',
            height: '60px',
            backgroundColor: '#0047AB',
            color: 'white',
            borderRadius: '50%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            fontSize: '24px',
            fontWeight: 'bold',
            margin: '0 auto'
          }}>
            PT
          </div>
        </div>
        <div className="text">
          Welcome to
          {' '}
          {Config.appName || 'Clover'}
          !
          <br />
          <br />
          {Config.appName || 'Clover'}
          {' '}
          is a messaging app that enables real-time messaging, audio and video calls,
          groups and conferencing.
        </div>
      </div>
      <div className="text">
        Copyright &copy;
        {' '}
        {Config.brand || 'Honeyside'}
        <br />
        v
        {version}
      </div>
    </div>
  );
}

export default Info;
